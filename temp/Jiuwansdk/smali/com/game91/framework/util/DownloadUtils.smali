.class public Lcom/game91/framework/util/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final sOkHttpClient:Lcom/game91/library/okhttp/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/game91/library/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/game91/library/okhttp/OkHttpClient;-><init>()V

    sput-object v0, Lcom/game91/framework/util/DownloadUtils;->sOkHttpClient:Lcom/game91/library/okhttp/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final closeIo(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "cloneable"    # Ljava/io/InputStream;

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static final closeIo(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "cloneable"    # Ljava/io/OutputStream;

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static download(Ljava/lang/String;Ljava/io/File;)V
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v9, Lcom/game91/library/okhttp/Request$Builder;

    invoke-direct {v9}, Lcom/game91/library/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v9, p0}, Lcom/game91/library/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/game91/library/okhttp/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/game91/library/okhttp/Request$Builder;->build()Lcom/game91/library/okhttp/Request;

    move-result-object v7

    .line 22
    .local v7, "request":Lcom/game91/library/okhttp/Request;
    sget-object v9, Lcom/game91/framework/util/DownloadUtils;->sOkHttpClient:Lcom/game91/library/okhttp/OkHttpClient;

    invoke-virtual {v9, v7}, Lcom/game91/library/okhttp/OkHttpClient;->newCall(Lcom/game91/library/okhttp/Request;)Lcom/game91/library/okhttp/Call;

    move-result-object v9

    invoke-interface {v9}, Lcom/game91/library/okhttp/Call;->execute()Lcom/game91/library/okhttp/Response;

    move-result-object v8

    .line 23
    .local v8, "response":Lcom/game91/library/okhttp/Response;
    const/4 v5, 0x0

    .line 24
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x800

    new-array v0, v9, [B

    .line 25
    .local v0, "buf":[B
    const/4 v6, 0x0

    .line 26
    .local v6, "len":I
    const/4 v3, 0x0

    .line 27
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 30
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 35
    :cond_1
    :try_start_0
    invoke-virtual {v8}, Lcom/game91/library/okhttp/Response;->body()Lcom/game91/library/okhttp/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lcom/game91/library/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 36
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_2

    .line 38
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 43
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/game91/framework/util/DownloadUtils;->closeIo(Ljava/io/OutputStream;)V

    .line 44
    invoke-static {v5}, Lcom/game91/framework/util/DownloadUtils;->closeIo(Ljava/io/InputStream;)V

    .line 45
    new-instance v9, Ljava/io/IOException;

    const-string v10, "error"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v3}, Lcom/game91/framework/util/DownloadUtils;->closeIo(Ljava/io/OutputStream;)V

    .line 48
    invoke-static {v5}, Lcom/game91/framework/util/DownloadUtils;->closeIo(Ljava/io/InputStream;)V

    .line 49
    throw v9

    .line 40
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 41
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    invoke-static {v4}, Lcom/game91/framework/util/DownloadUtils;->closeIo(Ljava/io/OutputStream;)V

    .line 48
    invoke-static {v5}, Lcom/game91/framework/util/DownloadUtils;->closeIo(Ljava/io/InputStream;)V

    .line 50
    return-void

    .line 47
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 42
    :catch_1
    move-exception v1

    goto :goto_1
.end method
