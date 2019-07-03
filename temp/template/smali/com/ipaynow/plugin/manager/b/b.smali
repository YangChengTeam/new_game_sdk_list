.class final Lcom/ipaynow/plugin/manager/b/b;
.super Ljava/lang/Object;


# static fields
.field private static au:Lcom/ipaynow/plugin/manager/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/manager/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/manager/b/a;-><init>(B)V

    sput-object v0, Lcom/ipaynow/plugin/manager/b/b;->au:Lcom/ipaynow/plugin/manager/b/a;

    return-void
.end method

.method static synthetic z()Lcom/ipaynow/plugin/manager/b/a;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/manager/b/b;->au:Lcom/ipaynow/plugin/manager/b/a;

    return-object v0
.end method
