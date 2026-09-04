.class public final Lcom/metamoji/cm/CmUtils;
.super Ljava/lang/Object;
.source "CmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/CmUtils$ICmPredicator;,
        Lcom/metamoji/cm/CmUtils$CreationOption;,
        Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;,
        Lcom/metamoji/cm/CmUtils$SyncObj;,
        Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;
    }
.end annotation


# static fields
.field static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmss"

.field private static _application:Lcom/metamoji/cm/ICmApplication;

.field private static _applicationContext:Landroid/content/Context;

.field private static _cacheDir:Ljava/io/File;

.field private static _privateDir:Ljava/io/File;

.field private static _privateExtDir:Ljava/io/File;

.field private static _retainData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static _retainTicket:I

.field private static _uiProvider:Lcom/metamoji/cm/ICmUIProvider;

.field public static sDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static bridge synthetic -$$Nest$sfget_uiProvider()Lcom/metamoji/cm/ICmUIProvider;
    .locals 1

    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/metamoji/cm/CmUtils;->sDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1878
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/metamoji/cm/CmUtils;->_retainData:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 1879
    sput v0, Lcom/metamoji/cm/CmUtils;->_retainTicket:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 369
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static checkOsVersion(I)Z
    .locals 1

    .line 1939
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1490
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-lez p1, :cond_0

    .line 1493
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1495
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static confirmDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1465
    new-instance v0, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;

    invoke-direct {v0, p3}, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1468
    :goto_0
    sget-object p3, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    invoke-interface {p3, p0}, Lcom/metamoji/cm/ICmUIProvider;->createAlertDialogBuilder(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1469
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1470
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1471
    sget-object p1, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    sget-object p2, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->OK:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-interface {p1, p2}, Lcom/metamoji/cm/ICmUIProvider;->getResourceString(Lcom/metamoji/cm/ICmUIProvider$ResourceId;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 1472
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1473
    const-string p1, "comfirmDialog"

    if-eqz v0, :cond_1

    .line 1476
    sget-object p2, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    new-instance p3, Lcom/metamoji/cm/CmUtils$3;

    invoke-direct {p3, v0}, Lcom/metamoji/cm/CmUtils$3;-><init>(Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;)V

    invoke-interface {p2, p0, p3, p1}, Lcom/metamoji/cm/ICmUIProvider;->showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    return-void

    .line 1485
    :cond_1
    sget-object p2, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    invoke-interface {p2, p0, p1}, Lcom/metamoji/cm/ICmUIProvider;->showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1460
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    new-instance v1, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmUIProvider;->runWithActivity(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 873
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 874
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 875
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 876
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 877
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 890
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 893
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return p1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 896
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    :goto_0
    move-object v2, v3

    goto :goto_b

    :catch_3
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    :goto_1
    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    :goto_2
    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    goto :goto_b

    :catch_5
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    .line 883
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_0

    .line 890
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catch_6
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_0
    :goto_4
    if-eqz p0, :cond_1

    .line 893
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    .line 896
    :goto_5
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_6
    return v1

    :catch_7
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    .line 880
    :goto_7
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_2

    .line 890
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_8
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_2
    :goto_8
    if-eqz p0, :cond_3

    .line 893
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_a

    .line 896
    :goto_9
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_3
    :goto_a
    return v1

    :catchall_3
    move-exception v0

    move-object p1, v0

    :goto_b
    if-eqz v2, :cond_4

    .line 890
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_c

    :catch_9
    move-exception v0

    move-object p0, v0

    goto :goto_d

    :cond_4
    :goto_c
    if-eqz p0, :cond_5

    .line 893
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_e

    .line 896
    :goto_d
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 898
    :cond_5
    :goto_e
    throw p1
.end method

.method public static copyFileByBuffer(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 910
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 911
    :try_start_1
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 912
    :try_start_2
    invoke-static {p0, v1}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 924
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 932
    :catch_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p0, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_4
    move-exception p1

    move-object p0, v0

    .line 916
    :goto_2
    :try_start_5
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_0

    .line 924
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_0
    if-eqz p0, :cond_1

    .line 932
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_3
    move-exception p1

    :goto_3
    if-eqz v0, :cond_2

    .line 924
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_2
    if-eqz p0, :cond_3

    .line 932
    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 937
    :catch_8
    :cond_3
    throw p1
.end method

.method public static copyFileFromAsset(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 1520
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1526
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1528
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1529
    :try_start_2
    invoke-static {v0, p0}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1543
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1545
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p0, :cond_0

    .line 1550
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1552
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v1

    goto :goto_5

    :catch_4
    move-exception p1

    move-object p0, v1

    .line 1538
    :goto_2
    :try_start_5
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 1543
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    .line 1545
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    if-eqz p0, :cond_2

    .line 1550
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 1552
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    const/4 p0, 0x0

    return p0

    :goto_5
    if-eqz v1, :cond_3

    .line 1543
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 1545
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    if-eqz p0, :cond_4

    .line 1550
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    .line 1552
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1555
    :cond_4
    :goto_7
    throw p1
.end method

.method public static copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    .locals 3

    .line 948
    invoke-static {}, Lcom/metamoji/cm/CmByteBuffer;->getBuffer()[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 951
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 952
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 959
    :cond_0
    invoke-static {v0}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 956
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 959
    invoke-static {v0}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    return v1

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    .line 960
    throw p0
.end method

.method public static createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 1948
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    invoke-interface {v0, p0}, Lcom/metamoji/cm/ICmUIProvider;->createAlertDialogBuilder(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDirOrFile(Ljava/io/File;)Z
    .locals 6

    .line 665
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 668
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 671
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 687
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static dipToPx(F)F
    .locals 1

    .line 294
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public static dipToPx(Landroid/content/Context;F)F
    .locals 0

    .line 304
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public static dipToSp(F)F
    .locals 0

    .line 334
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p0

    .line 335
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->pxToSp(F)F

    move-result p0

    return p0
.end method

.method public static equalsString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1955
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static extractDoubleFromString(Ljava/lang/String;D)D
    .locals 0

    .line 633
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p1

    .line 637
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 617
    :try_start_0
    const-string v0, "[+-]?[0-9]+(?:[.][0-9]*)*(?:[eE][+-]?[0-9]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 619
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 623
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            "TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TTKey;TTValue;>;TTKey;)TTValue;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2358
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->get(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            "TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TTKey;TTValue;>;TTKey;",
            "Lcom/metamoji/cm/ISupplyer<",
            "TTValue;>;)TTValue;"
        }
    .end annotation

    .line 2372
    new-instance v0, Lcom/metamoji/cm/CmUtils$20;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$20;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->getAndConvertT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAndConvert(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/IFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            "TValue:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TTKey;TTValue;>;TTKey;",
            "Lcom/metamoji/cm/IFunction<",
            "TTValue;TTResult;>;)TTResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2422
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/cm/CmUtils;->getAndConvertT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/IFunction<",
            "Ljava/lang/Object;",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2392
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/cm/CmUtils;->getAndConvertT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/IFunction<",
            "Ljava/lang/Object;",
            "TTResult;>;",
            "Lcom/metamoji/cm/ISupplyer<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 2407
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/cm/CmUtils;->getAndConvertT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAndConvertT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            "TValue:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TTKey;TTValue;>;TTKey;",
            "Lcom/metamoji/cm/IFunction<",
            "TTValue;TTResult;>;",
            "Lcom/metamoji/cm/ISupplyer<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2438
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 2440
    invoke-interface {p2, p0}, Lcom/metamoji/cm/IFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 2442
    invoke-interface {p3}, Lcom/metamoji/cm/ISupplyer;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getAndRemoveRetainData(I)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1920
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_retainData:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1921
    sget-object v1, Lcom/metamoji/cm/CmUtils;->_retainData:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    return-object v0
.end method

.method public static getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;
    .locals 1

    .line 202
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_application:Lcom/metamoji/cm/ICmApplication;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/cm/ICmApplication;->getLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Lcom/metamoji/cm/ICmApplication;
    .locals 1

    .line 195
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_application:Lcom/metamoji/cm/ICmApplication;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 187
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAs(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            "TValue:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TTKey;TTValue;>;TTKey;)TTResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2319
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->getAsT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAs(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")TTResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2293
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->getAs(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAs(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ISupplyer<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 2305
    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/CmUtils;->getAsT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAsBool(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2236
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->getAsBool(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)Z

    move-result p0

    return p0
.end method

.method public static getAsBool(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ISupplyer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2248
    new-instance v0, Lcom/metamoji/cm/CmUtils$16;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$16;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2256
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 2258
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getAsBoolOrNull(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 2269
    new-instance v0, Lcom/metamoji/cm/CmUtils$17;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$17;-><init>()V

    new-instance v1, Lcom/metamoji/cm/CmUtils$18;

    invoke-direct {v1}, Lcom/metamoji/cm/CmUtils$18;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static getAsDouble(Ljava/util/Map;Ljava/lang/String;)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2122
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->getAsDouble(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getAsDouble(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ISupplyer<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 2133
    new-instance v0, Lcom/metamoji/cm/CmUtils$10;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$10;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    .line 2142
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 2144
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getAsDoubleOrNull(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 2155
    new-instance v0, Lcom/metamoji/cm/CmUtils$11;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$11;-><init>()V

    new-instance v1, Lcom/metamoji/cm/CmUtils$12;

    invoke-direct {v1}, Lcom/metamoji/cm/CmUtils$12;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public static getAsFloat(Ljava/util/Map;Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2178
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->getAsFloat(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)F

    move-result p0

    return p0
.end method

.method public static getAsFloat(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ISupplyer<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 2190
    new-instance v0, Lcom/metamoji/cm/CmUtils$13;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$13;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2199
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 2201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getAsFloatOrNull(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 2212
    new-instance v0, Lcom/metamoji/cm/CmUtils$14;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$14;-><init>()V

    new-instance v1, Lcom/metamoji/cm/CmUtils$15;

    invoke-direct {v1}, Lcom/metamoji/cm/CmUtils$15;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static getAsInt(Ljava/util/Map;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2008
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->getAsInt(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)I

    move-result p0

    return p0
.end method

.method public static getAsInt(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ISupplyer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 2020
    new-instance v0, Lcom/metamoji/cm/CmUtils$4;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$4;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2028
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2030
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getAsIntOrNull(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2042
    new-instance v0, Lcom/metamoji/cm/CmUtils$5;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$5;-><init>()V

    new-instance v1, Lcom/metamoji/cm/CmUtils$6;

    invoke-direct {v1}, Lcom/metamoji/cm/CmUtils$6;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getAsLong(Ljava/util/Map;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2065
    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->getAsLong(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAsLong(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ISupplyer<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 2077
    new-instance v0, Lcom/metamoji/cm/CmUtils$7;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$7;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    .line 2085
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 2087
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAsLongOrNull(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 2098
    new-instance v0, Lcom/metamoji/cm/CmUtils$8;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$8;-><init>()V

    new-instance v1, Lcom/metamoji/cm/CmUtils$9;

    invoke-direct {v1}, Lcom/metamoji/cm/CmUtils$9;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->getAndConvert(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getAsString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1989
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1990
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1992
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1995
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static getAsT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            "TValue:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TTKey;TTValue;>;TTKey;",
            "Lcom/metamoji/cm/ISupplyer<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 2333
    new-instance v0, Lcom/metamoji/cm/CmUtils$19;

    invoke-direct {v0}, Lcom/metamoji/cm/CmUtils$19;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->getAndConvertT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/IFunction;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBytesFromAsset(Ljava/lang/String;)[B
    .locals 4

    .line 1567
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1572
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1574
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1575
    :try_start_2
    invoke-static {v0, p0}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1588
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1590
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p0, :cond_0

    .line 1595
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1597
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1602
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_5

    :catch_4
    move-exception v2

    move-object p0, v1

    move-object v0, p0

    .line 1583
    :goto_2
    :try_start_5
    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_1

    .line 1588
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .line 1590
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    if-eqz p0, :cond_2

    .line 1595
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 1597
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-object v1

    :catchall_2
    move-exception v1

    :goto_5
    if-eqz v0, :cond_3

    .line 1588
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 1590
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    if-eqz p0, :cond_4

    .line 1595
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    .line 1597
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1600
    :cond_4
    :goto_7
    throw v1
.end method

.method public static getDateStringNow()Ljava/lang/String;
    .locals 3

    .line 1839
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1840
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1841
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDimensionPixelSize(I)I
    .locals 1

    .line 1943
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 271
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 272
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/metamoji/cm/CmUtils;->sDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 273
    sget-object v0, Lcom/metamoji/cm/CmUtils;->sDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 283
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 284
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget-object v0, Lcom/metamoji/cm/CmUtils;->sDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 285
    sget-object p0, Lcom/metamoji/cm/CmUtils;->sDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1110
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1113
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1115
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getImageFromClipboard()Landroid/net/Uri;
    .locals 4

    .line 1715
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1716
    const-class v1, Landroid/content/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1717
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1718
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1722
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1723
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1724
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "image/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getImportTempFolder(Z)Ljava/io/File;
    .locals 3

    .line 103
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cmtemp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getMovieDir()Ljava/io/File;
    .locals 3

    .line 1751
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1755
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/MetaMoJi/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1757
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v1
.end method

.method public static getPictureDir()Ljava/io/File;
    .locals 3

    .line 1735
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1739
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/MetaMoJi/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1741
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v1
.end method

.method public static getPrivateDataDirectory()Ljava/io/File;
    .locals 1

    .line 217
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_privateDir:Ljava/io/File;

    return-object v0
.end method

.method public static getPrivateExtDirectory()Ljava/io/File;
    .locals 2

    .line 240
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/cm/CmUtils;->_privateExtDir:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getProductVersion()Ljava/lang/String;
    .locals 4

    .line 251
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 257
    sget-object v2, Lcom/metamoji/cm/CmUtils;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 258
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static getRetainData(I)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1907
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_retainData:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSourceFileForImport(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 142
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, v0}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getTemporaryDataDirectory()Ljava/io/File;
    .locals 1

    .line 225
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getTextFromClipboard()Ljava/lang/String;
    .locals 8

    .line 1693
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1694
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1695
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1700
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1701
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_2

    .line 1702
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 1705
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1707
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v5, v4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    return-object v1

    .line 1711
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueFilename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const v2, 0x186a0

    if-ge v1, v2, :cond_1

    .line 1772
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 1776
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUnixEpoch()Ljava/util/Calendar;
    .locals 8

    .line 645
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x7b2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 646
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    return-object v1
.end method

.method public static getUnixEpochDate()Ljava/util/Date;
    .locals 1

    .line 655
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getUnixEpoch()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFromFile(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriFromFileForImport(Ljava/io/File;Landroidx/fragment/app/FragmentActivity;)Landroid/net/Uri;
    .locals 2

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 127
    :cond_1
    new-instance p1, Ljava/io/File;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p1}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 129
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static initialize(Lcom/metamoji/cm/ICmApplication;Landroid/content/Context;)V
    .locals 0

    .line 174
    sput-object p0, Lcom/metamoji/cm/CmUtils;->_application:Lcom/metamoji/cm/ICmApplication;

    .line 175
    invoke-interface {p0}, Lcom/metamoji/cm/ICmApplication;->getUIProvider()Lcom/metamoji/cm/ICmUIProvider;

    move-result-object p0

    sput-object p0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    .line 176
    sput-object p1, Lcom/metamoji/cm/CmUtils;->_applicationContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/metamoji/cm/CmUtils;->_privateDir:Ljava/io/File;

    .line 178
    sget-object p0, Lcom/metamoji/cm/CmUtils;->_applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/metamoji/cm/CmUtils;->_cacheDir:Ljava/io/File;

    .line 179
    sget-object p0, Lcom/metamoji/cm/CmUtils;->_applicationContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/metamoji/cm/CmUtils;->_privateExtDir:Ljava/io/File;

    return-void
.end method

.method public static isChromeOs(Landroid/content/Context;)Z
    .locals 1

    .line 1974
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "org.chromium.arc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 1

    .line 351
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_application:Lcom/metamoji/cm/ICmApplication;

    invoke-interface {v0, p0}, Lcom/metamoji/cm/ICmApplication;->isTabletSize(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isValidString(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1963
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic lambda$confirmDialog$3(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1460
    invoke-static {p3, p0, p1, p2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$selectDialog$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroidx/fragment/app/FragmentActivity;)V
    .locals 1

    move-object v0, p1

    move-object p1, p0

    move-object p0, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v0

    .line 1292
    invoke-static/range {p0 .. p6}, Lcom/metamoji/cm/CmUtils;->selectDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic lambda$yesNoDialog$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, v0

    .line 1238
    invoke-static/range {p0 .. p5}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$yesNoDialog$1(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    move-object v0, p1

    move-object p1, p0

    move-object p0, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, v0

    .line 1241
    invoke-static/range {p0 .. p7}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadFileInBuffer(Ljava/io/File;)[B
    .locals 5

    const/4 v0, 0x0

    .line 1078
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    long-to-int v1, v1

    .line 1082
    new-array v1, v1, [B

    .line 1083
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1092
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1095
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p0

    goto :goto_0

    .line 1080
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 1087
    :goto_0
    :try_start_4
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 1092
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 1095
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_2

    .line 1092
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 1095
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1097
    :cond_2
    :goto_3
    throw p0
.end method

.method public static loadStreamInBuffer(Ljava/io/InputStream;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1016
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1017
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1018
    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    .line 1019
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadString(I)Ljava/lang/String;
    .locals 1

    .line 1511
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static modalConfirmDialog(II)V
    .locals 1

    .line 1445
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-lez p1, :cond_0

    .line 1448
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1450
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static modalConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1419
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1424
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 1425
    new-instance v1, Lcom/metamoji/cm/CmUtils$SyncObj;

    invoke-direct {v1}, Lcom/metamoji/cm/CmUtils$SyncObj;-><init>()V

    .line 1426
    new-instance v3, Lcom/metamoji/cm/CmUtils$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/metamoji/cm/CmUtils$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/CmUtils$SyncObj;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 1437
    invoke-virtual {v1}, Lcom/metamoji/cm/CmUtils$SyncObj;->getResult()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1439
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1441
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    :goto_0
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 1442
    throw p0

    .line 1421
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Modal dialog must be opened from background thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static modalSelectDialog(Landroidx/fragment/app/FragmentActivity;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1402
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1403
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/cm/CmUtils;->modalSelectDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static modalSelectDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1373
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 1374
    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1378
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 1379
    new-instance v4, Lcom/metamoji/cm/CmUtils$SyncObj;

    invoke-direct {v4}, Lcom/metamoji/cm/CmUtils$SyncObj;-><init>()V

    .line 1380
    new-instance v3, Lcom/metamoji/cm/CmUtils$1;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/metamoji/cm/CmUtils$1;-><init>(Lcom/metamoji/cm/CmUtils$SyncObj;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 1395
    invoke-virtual {v4}, Lcom/metamoji/cm/CmUtils$SyncObj;->getResult()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 1398
    throw p0

    .line 1375
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Modal dialog must be opened from background thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1411
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1412
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1407
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    sget-object v1, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->OK:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmUIProvider;->getResourceString(Lcom/metamoji/cm/ICmUIProvider$ResourceId;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    sget-object v2, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->CANCEL:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-interface {v1, v2}, Lcom/metamoji/cm/ICmUIProvider;->getResourceString(Lcom/metamoji/cm/ICmUIProvider$ResourceId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/metamoji/cm/CmUtils;->modalSelectDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parseURLQuery(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    .line 1173
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1174
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1176
    :cond_0
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1177
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    const/16 v5, 0x3d

    .line 1178
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    .line 1179
    const-string v7, ""

    if-ne v6, v5, :cond_1

    .line 1182
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1185
    :cond_1
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 1186
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1187
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v4

    .line 1191
    :goto_1
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static pxToDip(F)F
    .locals 1

    .line 314
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static pxToSp(F)F
    .locals 1

    .line 329
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 745
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 746
    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x400

    .line 750
    new-array v3, v3, [C

    .line 751
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v5, 0x0

    .line 752
    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 762
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    .line 765
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 769
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_5

    :catch_2
    move-exception v2

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_5

    :catch_3
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 757
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_1

    .line 762
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 765
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 769
    :goto_3
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-object v0

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz p0, :cond_3

    .line 762
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_7

    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    .line 765
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 769
    :goto_7
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 771
    :cond_4
    :goto_8
    throw v0
.end method

.method public static registerImageToGallery(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    .line 1789
    const-string p2, "image/jpeg"

    .line 1791
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1792
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1793
    const-string v2, "mime_type"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const-string p2, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    if-nez p0, :cond_1

    .line 1799
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1801
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1802
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 1803
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1804
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static registerVideoToGallery(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    .line 1815
    const-string p2, "video/mp4"

    .line 1817
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1818
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1819
    const-string v2, "mime_type"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string p2, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    if-nez p0, :cond_1

    .line 1825
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1827
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1828
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 1829
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1830
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static removeAll(Ljava/util/Collection;Lcom/metamoji/cm/CmUtils$ICmPredicator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/metamoji/cm/CmUtils$ICmPredicator<",
            "TE;>;)V"
        }
    .end annotation

    .line 384
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 385
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/cm/CmUtils$ICmPredicator;->predicate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeRetainData(I)V
    .locals 1

    .line 1930
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_retainData:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static removeTempFileForImport(Ljava/io/File;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static safeCloseStream(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 966
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 968
    const-string v0, "error on closing stream."

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static safeCreateFile(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/cm/CmUtils$CreationOption;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 708
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 711
    invoke-virtual {p2}, Lcom/metamoji/cm/CmUtils$CreationOption;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    const-string p0, "file %s is already exists."

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 718
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    .line 719
    const-string p0, "file %s is already exists and cannot remove it."

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 726
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    .line 731
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static safeParseBool(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 563
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 566
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static safeParseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 0

    .line 443
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 446
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static safeParseFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    .line 399
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 401
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static safeParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 488
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 491
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static safeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 1968
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static safeURLDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1140
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1142
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1143
    const-string p0, ""

    return-object p0
.end method

.method public static safeURLEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1154
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1156
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1157
    const-string p0, ""

    return-object p0
.end method

.method public static saveBufferToFile(Ljava/io/File;[B)Z
    .locals 2

    const/4 v0, 0x0

    .line 982
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 983
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 991
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 993
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 986
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 991
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 993
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const/4 p0, 0x0

    return p0

    :goto_2
    if-eqz v0, :cond_1

    .line 991
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 993
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 996
    :cond_1
    :goto_3
    throw p0
.end method

.method public static selectDialog(IIIILandroid/content/DialogInterface$OnClickListener;Z)V
    .locals 7

    .line 1311
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-lez p1, :cond_0

    .line 1312
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    .line 1313
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cm/CmUtils;->selectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static selectDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1

    if-eqz p5, :cond_0

    .line 1298
    new-instance v0, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;

    invoke-direct {v0, p5}, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1301
    :goto_0
    sget-object p5, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    invoke-interface {p5, p0}, Lcom/metamoji/cm/ICmUIProvider;->createAlertDialogBuilder(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1302
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1303
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1304
    invoke-virtual {p0, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1305
    invoke-virtual {p0, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1306
    invoke-virtual {p0, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1307
    sget-object p1, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    const-string p2, "selectDialog"

    invoke-interface {p1, p0, p2}, Lcom/metamoji/cm/ICmUIProvider;->showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static selectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 8

    .line 1292
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    new-instance v1, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmUIProvider;->runWithActivity(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;)V

    return-void
.end method

.method public static setRetainData(Ljava/lang/Object;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1891
    :cond_0
    sget v0, Lcom/metamoji/cm/CmUtils;->_retainTicket:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/metamoji/cm/CmUtils;->_retainTicket:I

    .line 1893
    sget-object v1, Lcom/metamoji/cm/CmUtils;->_retainData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v0
.end method

.method public static spToPx(F)F
    .locals 1

    .line 324
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public static stripExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1126
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1128
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static suppressOrientationChange(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1852
    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1853
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 1855
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_2

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x9

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    .line 1870
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static toBool(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-static {p0, v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public static toBool(Ljava/lang/Object;Z)Z
    .locals 1

    .line 587
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 588
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 590
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 591
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 593
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 594
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public static toDouble(Ljava/lang/Object;D)D
    .locals 0

    .line 477
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 478
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public static toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    .line 458
    :try_start_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 459
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 461
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 465
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toFloat(Ljava/lang/Object;F)F
    .locals 0

    .line 432
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static toFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1

    .line 413
    :try_start_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 414
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 416
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 420
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toInt(Ljava/lang/Object;I)I
    .locals 0

    .line 522
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static toInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 503
    :try_start_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 504
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 506
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 510
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toLong(Ljava/lang/Object;J)J
    .locals 0

    .line 552
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    .line 533
    :try_start_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 534
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 536
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 540
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 606
    const-string p0, ""

    return-object p0

    .line 608
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 4

    .line 1615
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1616
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1617
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_0

    .line 1619
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1622
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 1624
    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 1625
    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 1626
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p2, v1, Landroid/graphics/Point;->y:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    add-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->y:F

    return-object p1
.end method

.method public static transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .line 1648
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1649
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1650
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_0

    .line 1652
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1655
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 1657
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1658
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget p2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p2

    .line 1659
    iget p2, v1, Landroid/graphics/Point;->y:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v0

    .line 1660
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method public static transformRect(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 3

    .line 1631
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1632
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1633
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_0

    .line 1635
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1638
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 1640
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1641
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget p2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p2

    int-to-float p0, p0

    .line 1642
    iget p2, v1, Landroid/graphics/Point;->y:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 1643
    invoke-virtual {p1, p0, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-object p1
.end method

.method public static writeCSVToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 816
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_4

    .line 820
    :try_start_1
    const-string p0, "UTF-8"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xef

    .line 821
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write(I)V

    const/16 p0, 0xbb

    .line 822
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write(I)V

    const/16 p0, 0xbf

    .line 823
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 824
    :cond_0
    const-string p0, "UTF-16LE"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 p3, 0xfe

    const/16 v3, 0xff

    if-eqz p0, :cond_1

    .line 825
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 826
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 827
    :cond_1
    const-string p0, "UTF-16BE"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 828
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 829
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 830
    :cond_2
    const-string p0, "UTF-32LE"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 831
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 832
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 833
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 834
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 835
    :cond_3
    const-string p0, "UTF-32BE"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 836
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 837
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 838
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 839
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 843
    :cond_4
    :goto_0
    new-instance p0, Ljava/io/OutputStreamWriter;

    invoke-direct {p0, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 844
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 853
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V

    .line 856
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 860
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v2, v1

    .line 847
    :goto_1
    :try_start_4
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_5

    .line 853
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 856
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 860
    :goto_3
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return v0

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v1, :cond_7

    .line 853
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_6

    :catch_5
    move-exception p1

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 856
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 860
    :goto_7
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 862
    :cond_8
    :goto_8
    throw p0
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    .line 784
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 785
    :try_start_1
    new-instance p0, Ljava/io/OutputStreamWriter;

    const-string p2, "UTF-8"

    invoke-direct {p0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 786
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 795
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V

    .line 798
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 802
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, v0

    .line 789
    :goto_0
    :try_start_4
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_0

    .line 795
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_0
    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception p0

    .line 802
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :catchall_2
    move-exception p1

    :goto_2
    if-eqz v0, :cond_2

    .line 795
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_3

    :catch_5
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 798
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 802
    :goto_4
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 804
    :cond_3
    :goto_5
    throw p1
.end method

.method public static yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1271
    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V

    return-void
.end method

.method public static yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V
    .locals 1

    .line 1274
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-lez p1, :cond_0

    .line 1277
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1279
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V

    return-void
.end method

.method static yesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V
    .locals 10

    .line 1244
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    sget-object v1, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->OK:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmUIProvider;->getResourceString(Lcom/metamoji/cm/ICmUIProvider$ResourceId;)Ljava/lang/String;

    move-result-object v8

    .line 1245
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    sget-object v1, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->CANCEL:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmUIProvider;->getResourceString(Lcom/metamoji/cm/ICmUIProvider$ResourceId;)Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 1246
    invoke-static/range {v2 .. v9}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static yesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1252
    new-instance v1, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;

    invoke-direct {v1, p3}, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1254
    :goto_0
    sget-object p3, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    invoke-interface {p3, p0}, Lcom/metamoji/cm/ICmUIProvider;->createAlertDialogBuilder(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1255
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1256
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1257
    invoke-virtual {p0, p6, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p4, :cond_1

    move-object v0, v1

    .line 1258
    :cond_1
    invoke-virtual {p0, p7, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 1259
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1260
    sget-object p1, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    if-nez p5, :cond_2

    const-string p5, "yesNoDialog"

    :cond_2
    invoke-interface {p1, p0, p5}, Lcom/metamoji/cm/ICmUIProvider;->showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1289
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1235
    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V

    return-void
.end method

.method public static yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V
    .locals 7

    .line 1238
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    new-instance v1, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmUIProvider;->runWithActivity(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;)V

    return-void
.end method

.method public static yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1241
    sget-object v0, Lcom/metamoji/cm/CmUtils;->_uiProvider:Lcom/metamoji/cm/ICmUIProvider;

    new-instance v1, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmUIProvider;->runWithActivity(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;)V

    return-void
.end method
