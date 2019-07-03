.class Lcom/ss/android/common/applog/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/ss/android/common/applog/AppLog;


# direct methods
.method constructor <init>(Lcom/ss/android/common/applog/AppLog;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 2656
    iput-object p1, p0, Lcom/ss/android/common/applog/c;->d:Lcom/ss/android/common/applog/AppLog;

    iput-object p2, p0, Lcom/ss/android/common/applog/c;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ss/android/common/applog/c;->b:Z

    iput-boolean p4, p0, Lcom/ss/android/common/applog/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/ss/android/common/applog/c;->d:Lcom/ss/android/common/applog/AppLog;

    iget-object v1, p0, Lcom/ss/android/common/applog/c;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ss/android/common/applog/c;->b:Z

    iget-boolean v3, p0, Lcom/ss/android/common/applog/c;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/lang/String;ZZ)Z

    .line 2660
    return-void
.end method
