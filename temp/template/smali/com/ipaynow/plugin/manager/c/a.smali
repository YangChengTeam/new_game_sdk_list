.class public final Lcom/ipaynow/plugin/manager/c/a;
.super Ljava/lang/Object;


# static fields
.field private static av:Ljava/util/HashMap;


# instance fields
.field private x:Lcom/ipaynow/plugin/model/impl/Model;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/manager/c/a;->av:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/c/a;->x:Lcom/ipaynow/plugin/model/impl/Model;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/c/a;-><init>()V

    return-void
.end method

.method public static A()Lcom/ipaynow/plugin/manager/c/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/c/b;->B()Lcom/ipaynow/plugin/manager/c/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final varargs a(Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Lcom/ipaynow/plugin/view/IpaynowLoading;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/core/task/a;

    iget-object v1, p0, Lcom/ipaynow/plugin/manager/c/a;->x:Lcom/ipaynow/plugin/model/impl/Model;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/ipaynow/plugin/core/task/a;-><init>(Lcom/ipaynow/plugin/model/impl/Model;Lcom/ipaynow/plugin/conf/code/SERVICE_CODE;Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;Lcom/ipaynow/plugin/view/IpaynowLoading;)V

    invoke-virtual {v0, p4}, Lcom/ipaynow/plugin/core/task/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v1, Lcom/ipaynow/plugin/manager/c/a;->av:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/ipaynow/plugin/model/impl/Model;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/c/a;->x:Lcom/ipaynow/plugin/model/impl/Model;

    return-void
.end method
