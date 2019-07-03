.class public Lcom/game91/framework/util/AssetsUtils;
.super Ljava/lang/Object;
.source "AssetsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static releaseFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 26
    const-string v10, "support_apk"

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 27
    .local v8, "outputDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v3, v2

    .line 61
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 31
    .end local v3    # "file":Ljava/lang/Object;
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".temp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v9, "tempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 33
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 35
    :cond_1
    const/4 v5, 0x0

    .line 36
    .local v5, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 38
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 39
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [B

    .line 42
    .local v0, "bytes":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "i":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    .line 43
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 45
    .end local v0    # "bytes":[B
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 46
    .end local v7    # "out":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    const/4 v2, 0x0

    .line 50
    if-eqz v5, :cond_2

    .line 51
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 52
    :cond_2
    if-eqz v6, :cond_3

    .line 53
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 59
    invoke-virtual {v9, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4
    move-object v3, v2

    .line 61
    .restart local v3    # "file":Ljava/lang/Object;
    goto :goto_0

    .line 50
    .end local v3    # "file":Ljava/lang/Object;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "bytes":[B
    .restart local v4    # "i":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_5
    if-eqz v5, :cond_6

    .line 51
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 52
    :cond_6
    if-eqz v7, :cond_7

    .line 53
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    move-object v6, v7

    .line 56
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 54
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 55
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 57
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 54
    .end local v0    # "bytes":[B
    .end local v4    # "i":I
    :catch_2
    move-exception v1

    .line 55
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 49
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 50
    :goto_4
    if-eqz v5, :cond_8

    .line 51
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 52
    :cond_8
    if-eqz v6, :cond_9

    .line 53
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 57
    :cond_9
    :goto_5
    throw v10

    .line 54
    :catch_3
    move-exception v1

    .line 55
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 49
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 45
    :catch_4
    move-exception v1

    goto :goto_2
.end method
