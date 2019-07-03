.class final Lcom/ipaynow/plugin/core/task/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic A:Lcom/ipaynow/plugin/core/task/a;

.field private final synthetic B:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/core/task/a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/core/task/b;->A:Lcom/ipaynow/plugin/core/task/a;

    iput-object p2, p0, Lcom/ipaynow/plugin/core/task/b;->B:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/b;->A:Lcom/ipaynow/plugin/core/task/a;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/task/a;->a(Lcom/ipaynow/plugin/core/task/a;)Lcom/ipaynow/plugin/view/IpaynowLoading;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/b;->B:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    return-void
.end method
