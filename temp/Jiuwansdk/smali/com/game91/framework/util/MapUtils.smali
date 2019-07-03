.class public Lcom/game91/framework/util/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# instance fields
.field private mHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
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
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/util/MapUtils;->mHeadersMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    .line 37
    return-void
.end method

.method private addCanNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static create()Lcom/game91/framework/util/MapUtils;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/game91/framework/util/MapUtils;

    invoke-direct {v0}, Lcom/game91/framework/util/MapUtils;-><init>()V

    return-object v0
.end method

.method public static merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    :cond_0
    return-object p0
.end method

.method public static replaceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 153
    const-string v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public buildBody()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    return-object v0
.end method

.method public buildHeader()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "duration":J
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    const-string v6, "_timestamp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    const-string v6, "_timestamp"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v0    # "duration":J
    :cond_0
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 86
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 87
    const-string v4, ""

    .line 88
    .local v4, "signStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    iget-object v6, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "lastKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 97
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "iXPQmHzJDamYJqag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mHeadersMap:Ljava/util/Map;

    const-string v6, "Sign"

    invoke-static {v4}, Lcom/game91/framework/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v3    # "lastKey":Ljava/lang/String;
    .end local v4    # "signStr":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/game91/framework/util/MapUtils;->mHeadersMap:Ljava/util/Map;

    return-object v5
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v2, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    const-string v3, "_timestamp"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    .local v0, "duration":J
    iget-object v2, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    const-string v3, "_timestamp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    const-string v3, "_timestamp"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v0    # "duration":J
    :cond_0
    iget-object v2, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    invoke-direct {p0, v2, p1, p2}, Lcom/game91/framework/util/MapUtils;->addCanNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/game91/framework/util/MapUtils;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    return-object p0
.end method

.method public put(Ljava/util/Map;)Lcom/game91/framework/util/MapUtils;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/framework/util/MapUtils;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    goto :goto_0

    .line 57
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public putDevicesInfo(Landroid/content/Context;)Lcom/game91/framework/util/MapUtils;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/game91/framework/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "uuid":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 106
    .local v0, "board":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 107
    .local v1, "brand":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 109
    .local v6, "model":Ljava/lang/String;
    const-string v3, ""

    .line 111
    .local v3, "deviceSn":Ljava/lang/String;
    :try_start_0
    const-class v9, Landroid/os/Build;

    const-string v10, "SERIAL"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 117
    :goto_0
    const-string v5, ""

    .line 119
    .local v5, "imei":Ljava/lang/String;
    :try_start_1
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 120
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 126
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_1
    const-string v2, ""

    .line 128
    .local v2, "deviceId":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 136
    :goto_2
    const-string v9, "deviceUuid"

    invoke-static {v8}, Lcom/game91/framework/util/MapUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    .line 137
    const-string v9, "deviceSupplier"

    invoke-static {v0}, Lcom/game91/framework/util/MapUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    .line 138
    const-string v9, "deviceBrand"

    invoke-static {v1}, Lcom/game91/framework/util/MapUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    .line 139
    const-string v9, "deviceModel"

    invoke-static {v6}, Lcom/game91/framework/util/MapUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    .line 140
    const-string v9, "deviceSn"

    invoke-static {v3}, Lcom/game91/framework/util/MapUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    .line 141
    const-string v9, "imei"

    invoke-static {v5}, Lcom/game91/framework/util/MapUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    .line 142
    const-string v9, "deviceId"

    invoke-static {v2}, Lcom/game91/framework/util/MapUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    .line 144
    return-object p0

    .line 112
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v5    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const-string v3, ""

    goto :goto_0

    .line 121
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "imei":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 122
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const-string v5, ""

    goto :goto_1

    .line 129
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "deviceId":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 130
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-string v2, ""

    goto :goto_2
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/game91/framework/util/MapUtils;->mHeadersMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/game91/framework/util/MapUtils;->addCanNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    return-object p0
.end method

.method public putSecret(Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "__security"

    invoke-virtual {p0, v0, p1}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/game91/framework/util/MapUtils;->mHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object p0
.end method
