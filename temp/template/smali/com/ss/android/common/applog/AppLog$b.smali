.class Lcom/ss/android/common/applog/AppLog$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/common/applog/AppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/common/applog/AppLog;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/ss/android/common/applog/AppLog;)V
    .locals 1

    .prologue
    .line 2773
    iput-object p1, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    .line 2774
    const-string v0, "ActionReaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog$b;->b:Z

    .line 2775
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2779
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog;)V

    .line 2780
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->b(Lcom/ss/android/common/applog/AppLog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2781
    const-string v0, "AppLog"

    const-string v1, "can not setup LogReaper"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    :goto_0
    return-void

    .line 2784
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/AppLog;->s()V

    .line 2786
    :goto_1
    const/4 v0, 0x0

    .line 2787
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v1, v1, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    monitor-enter v1

    .line 2788
    :try_start_0
    sget-boolean v2, Lcom/ss/android/common/applog/AppLog;->b:Z

    if-eqz v2, :cond_1

    .line 2789
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2829
    :goto_2
    const-string v0, "AppLog"

    const-string v1, "ActionReadper quit"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2790
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v2, v2, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    .line 2792
    :try_start_2
    sget-boolean v2, Lcom/ss/android/common/a;->a:Z

    if-eqz v2, :cond_4

    .line 2793
    iget-boolean v2, p0, Lcom/ss/android/common/applog/AppLog$b;->b:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-static {v2}, Lcom/ss/android/common/applog/AppLog;->c(Lcom/ss/android/common/applog/AppLog;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2794
    :cond_2
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v2, v2, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-static {v3}, Lcom/ss/android/common/applog/AppLog;->d(Lcom/ss/android/common/applog/AppLog;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2808
    :goto_3
    :try_start_3
    sget-boolean v2, Lcom/ss/android/common/applog/AppLog;->b:Z

    if-eqz v2, :cond_6

    .line 2809
    monitor-exit v1

    goto :goto_2

    .line 2815
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2796
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v2, v2, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 2805
    :catch_0
    move-exception v2

    goto :goto_3

    .line 2799
    :cond_4
    iget-boolean v2, p0, Lcom/ss/android/common/applog/AppLog$b;->b:Z

    if-eqz v2, :cond_5

    .line 2800
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v2, v2, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-static {v3}, Lcom/ss/android/common/applog/AppLog;->d(Lcom/ss/android/common/applog/AppLog;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_3

    .line 2802
    :cond_5
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v2, v2, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 2810
    :cond_6
    :try_start_5
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v2, v2, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2811
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v0, v0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/applog/AppLog$a;

    .line 2815
    :cond_7
    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2816
    if-eqz v0, :cond_a

    .line 2817
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/AppLog;->b(Lcom/ss/android/common/applog/AppLog$a;)V

    .line 2818
    iput-boolean v7, p0, Lcom/ss/android/common/applog/AppLog$b;->b:Z

    .line 2825
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/AppLog;->v()V

    .line 2826
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {v0, v7, v6}, Lcom/ss/android/common/applog/AppLog;->a(ZZ)V

    .line 2827
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->e(Lcom/ss/android/common/applog/AppLog;)V

    goto/16 :goto_1

    .line 2813
    :cond_9
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    iget-object v0, v0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/applog/AppLog$a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 2820
    :cond_a
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog$b;->b:Z

    if-eqz v0, :cond_8

    .line 2821
    iput-boolean v6, p0, Lcom/ss/android/common/applog/AppLog$b;->b:Z

    .line 2822
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog$b;->a:Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/AppLog;->s()V

    goto :goto_5
.end method
