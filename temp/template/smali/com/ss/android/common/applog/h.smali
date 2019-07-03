.class Lcom/ss/android/common/applog/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ss/android/common/applog/g;


# direct methods
.method constructor <init>(Lcom/ss/android/common/applog/g;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ss/android/common/applog/h;->a:Lcom/ss/android/common/applog/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/h;->a:Lcom/ss/android/common/applog/g;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->a(Lcom/ss/android/common/applog/g;)V

    .line 182
    iget-object v0, p0, Lcom/ss/android/common/applog/h;->a:Lcom/ss/android/common/applog/g;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->b(Lcom/ss/android/common/applog/g;)V

    .line 183
    iget-object v0, p0, Lcom/ss/android/common/applog/h;->a:Lcom/ss/android/common/applog/g;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->c(Lcom/ss/android/common/applog/g;)V

    .line 184
    iget-object v0, p0, Lcom/ss/android/common/applog/h;->a:Lcom/ss/android/common/applog/g;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->g()V

    .line 185
    iget-object v0, p0, Lcom/ss/android/common/applog/h;->a:Lcom/ss/android/common/applog/g;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->d(Lcom/ss/android/common/applog/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method
