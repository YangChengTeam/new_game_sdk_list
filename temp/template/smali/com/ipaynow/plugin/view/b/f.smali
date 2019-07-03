.class final Lcom/ipaynow/plugin/view/b/f;
.super Ljava/lang/Object;


# static fields
.field private static cf:Lcom/ipaynow/plugin/view/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/view/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/b/c;-><init>(B)V

    sput-object v0, Lcom/ipaynow/plugin/view/b/f;->cf:Lcom/ipaynow/plugin/view/b/c;

    return-void
.end method

.method static synthetic ac()Lcom/ipaynow/plugin/view/b/c;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/view/b/f;->cf:Lcom/ipaynow/plugin/view/b/c;

    return-object v0
.end method
