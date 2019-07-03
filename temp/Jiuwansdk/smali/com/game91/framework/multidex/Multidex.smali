.class public Lcom/game91/framework/multidex/Multidex;
.super Ljava/lang/Object;
.source "Multidex.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "Game91Sdk_Settings"

.field private static sHasInsertedNativeLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game91/framework/multidex/Multidex;->sHasInsertedNativeLibrary:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "firstArray"    # Ljava/lang/Object;
    .param p1, "secondArray"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 155
    .local v3, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 156
    .local v1, "firstArrayLength":I
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 157
    .local v0, "allLength":I
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 159
    if-ge v2, v1, :cond_0

    .line 160
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 158
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_0
    sub-int v5, v2, v1

    invoke-static {p0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 165
    :cond_1
    return-object v4
.end method

.method private static copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    .local v0, "bufferedInput":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    .local v1, "bufferedOutput":Ljava/io/BufferedOutputStream;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    if-lez v2, :cond_0

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 277
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 278
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 279
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 280
    return-void
.end method

.method private static findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Z
    .locals 17
    .param p0, "zipfile"    # Ljava/util/zip/ZipFile;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cpuArch"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "nativeLibDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    const-string v14, "NativeLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Try to copy plugin\'s cup arch: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, "findLib":Z
    const/4 v8, 0x0

    .line 198
    .local v8, "findSo":Z
    const/4 v3, 0x0

    .line 199
    .local v3, "buffer":[B
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lib/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 201
    .local v13, "libPrefix":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 203
    .local v4, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 204
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 205
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "entryName":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-lt v14, v15, :cond_0

    .line 210
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-le v14, v15, :cond_3

    .line 244
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryName":Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_2

    .line 245
    const-string v14, "NativeLib"

    const-string v15, "Fast skip all!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v8, 0x1

    .line 249
    .end local v8    # "findSo":Z
    :cond_2
    return v8

    .line 213
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v8    # "findSo":Z
    :cond_3
    if-nez v7, :cond_4

    const-string v14, "lib/"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 216
    :cond_4
    const/4 v7, 0x1

    .line 217
    const-string v14, ".so"

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 221
    if-nez v3, :cond_5

    .line 222
    const/4 v8, 0x1

    .line 223
    const-string v14, "NativeLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found plugin\'s cup arch dir: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/16 v14, 0x2000

    new-array v3, v14, [B

    .line 227
    :cond_5
    const/16 v14, 0x2f

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 228
    .local v12, "libName":Ljava/lang/String;
    const-string v14, "NativeLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "verify so "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .local v11, "libFile":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 232
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/game91/framework/multidex/Multidex;->getSoVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 233
    .local v2, "VersionCode":I
    move/from16 v0, p4

    if-ne v2, v0, :cond_6

    .line 234
    const-string v14, "NativeLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "skip existing so : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 238
    .end local v2    # "VersionCode":I
    :cond_6
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 239
    .local v9, "fos":Ljava/io/FileOutputStream;
    const-string v14, "NativeLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "copy so "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v3, v14, v9}, Lcom/game91/framework/multidex/Multidex;->copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 241
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v10, v1}, Lcom/game91/framework/multidex/Multidex;->setSoVersion(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private static getDexElements(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "pathList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dexElements"

    invoke-static {v0, p0, v1}, Lcom/game91/framework/multidex/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getPathClassLoader()Ldalvik/system/PathClassLoader;
    .locals 2

    .prologue
    .line 147
    const-class v1, Lcom/game91/framework/multidex/Multidex;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 148
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    return-object v0
.end method

.method private static getPathList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "baseDexClassLoader"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pathList"

    invoke-static {v0, p0, v1}, Lcom/game91/framework/multidex/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getSoVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 263
    const-string v1, "Game91Sdk_Settings"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 264
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static insertNativeLibrary(Ldalvik/system/DexClassLoader;)V
    .locals 22
    .param p0, "dexClassLoader"    # Ldalvik/system/DexClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    sget-boolean v19, Lcom/game91/framework/multidex/Multidex;->sHasInsertedNativeLibrary:Z

    if-eqz v19, :cond_0

    .line 136
    :goto_0
    return-void

    .line 92
    :cond_0
    const/16 v19, 0x1

    sput-boolean v19, Lcom/game91/framework/multidex/Multidex;->sHasInsertedNativeLibrary:Z

    .line 94
    invoke-static {}, Lcom/game91/framework/multidex/Multidex;->getPathClassLoader()Ldalvik/system/PathClassLoader;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/game91/framework/multidex/Multidex;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 95
    .local v7, "basePathList":Ljava/lang/Object;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x16

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 96
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "nativeLibraryDirectories"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 98
    .local v13, "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v19

    const-string v20, "support_lib"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "nativeLibraryPathElements"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 101
    .local v6, "baseNativeLibraryPathElements":Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 103
    .local v5, "baseArrayLength":I
    invoke-static/range {p0 .. p0}, Lcom/game91/framework/multidex/Multidex;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 104
    .local v17, "newPathList":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "nativeLibraryPathElements"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 105
    .local v16, "newNativeLibraryPathElements":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 106
    .local v10, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 107
    .local v4, "allNativeLibraryPathElements":Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x1a

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 111
    const-string v19, "path"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 115
    .local v18, "soPathField":Ljava/lang/reflect/Field;
    :goto_1
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 117
    .local v14, "newArrayLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v14, :cond_1

    .line 118
    move-object/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 119
    .local v9, "element":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "dir":Ljava/lang/String;
    const-string v19, "support_lib"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 121
    invoke-static {v4, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 126
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "nativeLibraryPathElements"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1, v4}, Lcom/game91/framework/multidex/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 113
    .end local v11    # "i":I
    .end local v14    # "newArrayLength":I
    .end local v18    # "soPathField":Ljava/lang/reflect/Field;
    :cond_2
    const-string v19, "dir"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .restart local v18    # "soPathField":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 117
    .restart local v8    # "dir":Ljava/lang/String;
    .restart local v9    # "element":Ljava/lang/Object;
    .restart local v11    # "i":I
    .restart local v14    # "newArrayLength":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 128
    .end local v4    # "allNativeLibraryPathElements":Ljava/lang/Object;
    .end local v5    # "baseArrayLength":I
    .end local v6    # "baseNativeLibraryPathElements":Ljava/lang/Object;
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/Object;
    .end local v10    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":I
    .end local v13    # "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v14    # "newArrayLength":I
    .end local v16    # "newNativeLibraryPathElements":Ljava/lang/Object;
    .end local v17    # "newPathList":Ljava/lang/Object;
    .end local v18    # "soPathField":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "nativeLibraryDirectories"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/game91/framework/multidex/ReflectUtil;->getFieldNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/io/File;

    move-object/from16 v12, v19

    check-cast v12, [Ljava/io/File;

    .line 130
    .local v12, "nativeLibraryDirectories":[Ljava/io/File;
    array-length v3, v12

    .line 131
    .local v3, "N":I
    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    new-array v15, v0, [Ljava/io/File;

    .line 132
    .local v15, "newNativeLibraryDirectories":[Ljava/io/File;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v0, v15, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v19

    const-string v20, "support_lib"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    aput-object v19, v15, v3

    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "nativeLibraryDirectories"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1, v15}, Lcom/game91/framework/multidex/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static install(Landroid/content/Context;Ljava/io/File;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    .line 59
    const-class v9, Lcom/game91/framework/multidex/Multidex;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 60
    .local v7, "parent":Ljava/lang/ClassLoader;
    const-string v9, "support_dex"

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 61
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "dexDir":Ljava/lang/String;
    const-string v9, "support_lib"

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 63
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "jniDir":Ljava/lang/String;
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v3, v5, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 68
    .local v2, "dexClassLoader":Ldalvik/system/DexClassLoader;
    :try_start_0
    invoke-static {}, Lcom/game91/framework/multidex/Multidex;->getPathClassLoader()Ldalvik/system/PathClassLoader;

    move-result-object v9

    invoke-static {v9}, Lcom/game91/framework/multidex/Multidex;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/game91/framework/multidex/Multidex;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "baseDexElements":Ljava/lang/Object;
    invoke-static {v2}, Lcom/game91/framework/multidex/Multidex;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/game91/framework/multidex/Multidex;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 70
    .local v6, "newDexElements":Ljava/lang/Object;
    invoke-static {v1, v6}, Lcom/game91/framework/multidex/Multidex;->combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "allDexElements":Ljava/lang/Object;
    invoke-static {}, Lcom/game91/framework/multidex/Multidex;->getPathClassLoader()Ldalvik/system/PathClassLoader;

    move-result-object v9

    invoke-static {v9}, Lcom/game91/framework/multidex/Multidex;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 72
    .local v8, "pathList":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "dexElements"

    invoke-static {v9, v8, v10, v0}, Lcom/game91/framework/multidex/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {v2}, Lcom/game91/framework/multidex/Multidex;->insertNativeLibrary(Ldalvik/system/DexClassLoader;)V

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/game91/framework/util/ApkUtils;->getApkPackageName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p0}, Lcom/game91/framework/util/ApkUtils;->getApkVersionCode(Ljava/lang/String;Landroid/content/Context;)I

    move-result v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {p1, p0, v9, v10, v11}, Lcom/game91/framework/multidex/Multidex;->tryToCopyNativeLib(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;ILjava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "allDexElements":Ljava/lang/Object;
    .end local v1    # "baseDexElements":Ljava/lang/Object;
    .end local v6    # "newDexElements":Ljava/lang/Object;
    .end local v8    # "pathList":Ljava/lang/Object;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/io/File;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v8}, Lcom/game91/framework/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v8

    const-string v9, "pathList"

    invoke-virtual {v8, v9}, Lcom/game91/framework/reflect/Reflect;->field(Ljava/lang/String;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v8

    const-string v9, "dexElements"

    invoke-virtual {v8, v9}, Lcom/game91/framework/reflect/Reflect;->field(Ljava/lang/String;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/game91/framework/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "dexElements":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 41
    .local v5, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 42
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 43
    .local v2, "element":Ljava/lang/Object;
    invoke-static {v2}, Lcom/game91/framework/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/game91/framework/reflect/Reflect;->fields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    .local v4, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/game91/framework/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/game91/framework/reflect/Reflect;->field(Ljava/lang/String;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/game91/framework/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v6

    .line 45
    .local v6, "object":Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v9, v6, Ljava/io/File;

    if-eqz v9, :cond_0

    check-cast v6, Ljava/io/File;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 46
    const-string v8, "VirtualApk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the plugin apk("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is loaded!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 v7, 0x1

    .line 55
    .end local v0    # "dexElements":Ljava/lang/Object;
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "length":I
    :cond_1
    :goto_1
    return v7

    .line 41
    .restart local v0    # "dexElements":Ljava/lang/Object;
    .restart local v2    # "element":Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "dexElements":Ljava/lang/Object;
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v5    # "length":I
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static setSoVersion(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 256
    const-string v2, "Game91Sdk_Settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 257
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method

.method private static tryToCopyNativeLib(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;ILjava/io/File;)V
    .locals 12
    .param p0, "apk"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "nativeLibDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 170
    .local v10, "startTime":J
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 174
    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v2, v7, v6

    .local v2, "cpuArch":Ljava/lang/String;
    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    .line 175
    invoke-static/range {v0 .. v5}, Lcom/game91/framework/multidex/Multidex;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 190
    const-string v1, "NativeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done! +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v2    # "cpuArch":Ljava/lang/String;
    :goto_1
    return-void

    .line 174
    .restart local v2    # "cpuArch":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 181
    .end local v2    # "cpuArch":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/game91/framework/multidex/Multidex;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 190
    const-string v1, "NativeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done! +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_2
    :try_start_2
    const-string v5, "armeabi"

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/game91/framework/multidex/Multidex;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 190
    const-string v1, "NativeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done! +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 190
    const-string v3, "NativeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Done! +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    throw v1
.end method
