<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDepartmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('departments', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->string('desc')->nullable();
            $table->unsignedBigInteger('parent_id')->nullable();
            $table->unsignedBigInteger('monetor_id')->nullable();
            $table->unsignedBigInteger('editor_id')->nullable();
            $table->unsignedBigInteger('writer_id')->nullable();

            $table->foreign('parent_id')->references('id')->on('departments')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('monetor_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('editor_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('writer_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('departments');
    }
}
