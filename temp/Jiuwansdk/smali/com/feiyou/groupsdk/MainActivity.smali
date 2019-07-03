.class public Lcom/feiyou/groupsdk/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private button4:Landroid/widget/Button;

.field private mLoginBtn:Landroid/widget/Button;

.field private mPayBtn:Landroid/widget/Button;

.field private mlogoutBtn:Landroid/widget/Button;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/feiyou/groupsdk/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/feiyou/groupsdk/MainActivity;->userId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/feiyou/groupsdk/MainActivity;)Lcom/feiyou/groupsdk/core/FYPayInfo;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/feiyou/groupsdk/MainActivity;->generatePayInfo()Lcom/feiyou/groupsdk/core/FYPayInfo;

    move-result-object v0

    return-object v0
.end method

.method private generatePayInfo()Lcom/feiyou/groupsdk/core/FYPayInfo;
    .locals 22

    .prologue
    .line 266
    new-instance v7, Lcom/feiyou/groupsdk/core/FYPayInfo;

    invoke-direct {v7}, Lcom/feiyou/groupsdk/core/FYPayInfo;-><init>()V

    .line 270
    .local v7, "fyPayInfo":Lcom/feiyou/groupsdk/core/FYPayInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/feiyou/groupsdk/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/feiyou/groupsdk/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 271
    const/16 v21, 0x80

    .line 270
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 273
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "GROUP_APPID"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 274
    .local v3, "appid":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "attach":Ljava/lang/String;
    const-string v13, "1"

    .line 276
    .local v13, "money":Ljava/lang/String;
    const-string v18, "test"

    .line 277
    .local v18, "title":Ljava/lang/String;
    const-string v17, "xiongtubaye"

    .line 278
    .local v17, "server":Ljava/lang/String;
    const-string v15, "cdcdd"

    .line 279
    .local v15, "role":Ljava/lang/String;
    const-string v11, "1"

    .line 280
    .local v11, "level":Ljava/lang/String;
    const-string v10, "127.0.0.1"

    .line 281
    .local v10, "ip":Ljava/lang/String;
    const-string v2, "e3919c6841bc3104c4de1919217ff2e1"

    .line 282
    .local v2, "app_key":Ljava/lang/String;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v14, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "user_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feiyou/groupsdk/MainActivity;->userId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v19, "app_id"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v19, "attach"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v19, "money"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v19, "server"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v19, "role"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v19, "level"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v19, "ip"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v19, "app_key"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v12, Ljava/util/ArrayList;

    .line 295
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 294
    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v19, Lcom/feiyou/groupsdk/MainActivity$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feiyou/groupsdk/MainActivity$6;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v16, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_0

    .line 315
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "GROUP_APPID"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setAppId(I)V

    .line 316
    invoke-virtual {v7, v4}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setAttach(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v7, v10}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setIp(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v7, v11}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setLevel(Ljava/lang/String;)V

    .line 319
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setOrderMoney(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feiyou/groupsdk/MainActivity;->userId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setUserId(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setServerId(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v7, v15}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setRole(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/feiyou/groupsdk/core/Md5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setSign(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setProductName(Ljava/lang/String;)V

    .line 329
    .end local v2    # "app_key":Ljava/lang/String;
    .end local v3    # "appid":I
    .end local v4    # "attach":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "ip":Ljava/lang/String;
    .end local v11    # "level":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "money":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "role":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "server":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 307
    .restart local v2    # "app_key":Ljava/lang/String;
    .restart local v3    # "appid":I
    .restart local v4    # "attach":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "ip":Ljava/lang/String;
    .restart local v11    # "level":Ljava/lang/String;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v13    # "money":Ljava/lang/String;
    .restart local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "role":Ljava/lang/String;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "server":Ljava/lang/String;
    .restart local v18    # "title":Ljava/lang/String;
    :cond_0
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 308
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 309
    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_1

    .line 311
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 326
    .end local v2    # "app_key":Ljava/lang/String;
    .end local v3    # "appid":I
    .end local v4    # "attach":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "ip":Ljava/lang/String;
    .end local v11    # "level":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "money":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "role":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "server":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 327
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 263
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;)V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->setContentView(I)V

    .line 54
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onCreate(Landroid/app/Activity;)V

    .line 55
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mLoginBtn:Landroid/widget/Button;

    .line 56
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mPayBtn:Landroid/widget/Button;

    .line 57
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mlogoutBtn:Landroid/widget/Button;

    .line 58
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->button4:Landroid/widget/Button;

    .line 64
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$1;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/feiyou/groupsdk/core/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    .line 104
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mLoginBtn:Landroid/widget/Button;

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$2;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mPayBtn:Landroid/widget/Button;

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$3;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mlogoutBtn:Landroid/widget/Button;

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$4;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->button4:Landroid/widget/Button;

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$5;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onDestroy(Landroid/app/Activity;)V

    .line 238
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 242
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 243
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onPause(Landroid/app/Activity;)V

    .line 232
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 256
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 257
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 225
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onRestart(Landroid/app/Activity;)V

    .line 226
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 205
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onResume(Landroid/app/Activity;)V

    .line 206
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->showFloatButton()V

    .line 208
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 219
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onStart(Landroid/app/Activity;)V

    .line 220
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 213
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->onStop(Landroid/app/Activity;)V

    .line 214
    return-void
.end method
