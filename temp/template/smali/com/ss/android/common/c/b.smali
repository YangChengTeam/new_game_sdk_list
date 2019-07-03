.class public Lcom/ss/android/common/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/common/c/b$b;,
        Lcom/ss/android/common/c/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ss/android/common/c/b;

.field private static b:Z

.field private static c:Z

.field private static d:Landroid/content/Context;


# instance fields
.field private final e:Lcom/ss/android/common/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/common/c/b;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/ss/android/common/c/d;

    sget-object v1, Lcom/ss/android/common/c/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ss/android/common/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    .line 33
    sget-boolean v0, Lcom/ss/android/common/c/b;->c:Z

    invoke-static {v0}, Lcom/ss/android/common/c/a;->a(Z)V

    .line 34
    iget-object v0, p0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/e;->a(Lcom/ss/android/common/c/d;)V

    .line 35
    iget-object v0, p0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->g()V

    .line 36
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    sget-object v1, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 40
    const-string v0, ""

    .line 41
    if-eqz v1, :cond_0

    .line 42
    iget-object v0, v1, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "DeviceRegisterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstallId() called,return value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 54
    if-nez p0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context = null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    sput-boolean v1, Lcom/ss/android/common/c/b;->b:Z

    .line 57
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 58
    sput-boolean v1, Lcom/ss/android/common/c/b;->c:Z

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/c/b;->d:Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    if-nez v0, :cond_3

    .line 62
    const-class v1, Lcom/ss/android/common/c/b;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Lcom/ss/android/common/c/b;

    invoke-direct {v0}, Lcom/ss/android/common/c/b;-><init>()V

    sput-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 66
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_3
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    const-string v0, "DeviceRegisterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceRegister init, DeviceRegister : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", process : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_4
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/ss/android/common/c/b$a;)V
    .locals 0

    .prologue
    .line 124
    invoke-static {p0}, Lcom/ss/android/common/c/a;->a(Lcom/ss/android/common/c/b$a;)V

    .line 125
    return-void
.end method

.method public static a(Lcom/ss/android/common/c/b$b;)V
    .locals 0

    .prologue
    .line 120
    invoke-static {p0}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/b$b;)V

    .line 121
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 168
    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/ss/android/common/c/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    const-string v1, "openudid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    invoke-static {}, Lcom/ss/android/common/c/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_3

    .line 175
    const-string v1, "clientudid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_3
    invoke-static {}, Lcom/ss/android/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    const-string v1, "install_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_4
    invoke-static {}, Lcom/ss/android/common/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    const-string v1, "device_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/ss/android/common/c/b;->c:Z

    .line 52
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->k()V

    .line 78
    :cond_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 89
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 105
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 114
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/ss/android/common/c/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->a(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->j()V

    .line 136
    :cond_0
    return-void
.end method

.method public static i()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 154
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->i()V

    .line 157
    :cond_0
    return-void
.end method

.method public static j()V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 161
    if-eqz v0, :cond_0

    .line 162
    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->i()V

    .line 164
    :cond_0
    return-void
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/ss/android/common/c/b;->a:Lcom/ss/android/common/c/b;

    .line 215
    if-eqz v0, :cond_0

    .line 216
    iget-object v0, v0, Lcom/ss/android/common/c/b;->e:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->h()V

    .line 217
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "DeviceRegisterManager"

    const-string v1, "updateDeviceInfo call  device_register"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method
