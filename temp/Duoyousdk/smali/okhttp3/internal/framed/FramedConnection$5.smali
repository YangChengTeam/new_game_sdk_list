.class Lokhttp3/internal/framed/FramedConnection$5;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/framed/FramedConnection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 849
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$5;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 851
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$5;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$2700(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$streamId:I

    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v4, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-interface {v1, v2, v3, v4}, Lokhttp3/internal/framed/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    .line 853
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$5;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$streamId:I

    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/FrameWriter;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 854
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$inFinished:Z

    if-eqz v1, :cond_2

    .line 855
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$5;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$5;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$2800(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v1

    iget v3, p0, Lokhttp3/internal/framed/FramedConnection$5;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 857
    monitor-exit v2

    .line 861
    :cond_2
    :goto_0
    return-void

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 859
    :catch_0
    move-exception v1

    goto :goto_0
.end method