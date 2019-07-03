.class public Lcom/ss/android/common/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Lcom/ss/android/common/c/b$a;

.field private static c:Z

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/c/a;->c:Z

    .line 33
    const-string v0, "toblog.snssdk.com"

    sput-object v0, Lcom/ss/android/common/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/ss/android/common/c/b$a;)V
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/ss/android/common/c/a;->b:Lcom/ss/android/common/c/b$a;

    .line 45
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 14
    sput-boolean p0, Lcom/ss/android/common/c/a;->a:Z

    .line 15
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/ss/android/common/c/a;->a:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/common/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/2/device_register/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 36
    sput-boolean p0, Lcom/ss/android/common/c/a;->c:Z

    .line 37
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/ss/android/common/c/a;->c:Z

    return v0
.end method

.method public static d()Lcom/ss/android/common/c/b$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/ss/android/common/c/a;->b:Lcom/ss/android/common/c/b$a;

    return-object v0
.end method
