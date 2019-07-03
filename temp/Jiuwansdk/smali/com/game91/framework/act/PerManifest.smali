.class public Lcom/game91/framework/act/PerManifest;
.super Ljava/lang/Object;
.source "PerManifest.java"


# static fields
.field public static final permissionGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final permissionName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v6

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.USE_SIP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.BODY_SENSORS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.permission.RECEIVE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/game91/framework/act/PerManifest;->permissionName:Ljava/util/List;

    .line 48
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission-group.CONTACTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission-group.CONTACTS"

    aput-object v1, v0, v4

    const-string v1, "android.permission-group.CONTACTS"

    aput-object v1, v0, v5

    const-string v1, "android.permission-group.PHONE"

    aput-object v1, v0, v6

    const-string v1, "android.permission-group.PHONE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission-group.PHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission-group.PHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission-group.PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission-group.PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission-group.PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission-group.CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission-group.CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission-group.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission-group.SENSORS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission-group.LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission-group.LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission-group.STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.permission-group.STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.permission-group.MICROPHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.permission-group.SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.permission-group.SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.permission-group.SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.permission-group.SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.permission-group.SMS"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/game91/framework/act/PerManifest;->permissionGroup:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
