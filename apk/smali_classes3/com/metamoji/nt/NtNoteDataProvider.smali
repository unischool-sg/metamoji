.class public Lcom/metamoji/nt/NtNoteDataProvider;
.super Landroid/content/ContentProvider;
.source "NtNoteDataProvider.java"


# static fields
.field private static final CLIPBOARD_EXCHANGE_FILENAME:Ljava/lang/String; = "__exchange.state"

.field private static final IMPORT_WORK_FILENAME:Ljava/lang/String; = "__importing.state"

.field public static final MIMETYPE_DRAWITEM:Ljava/lang/String; = "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.3"

.field public static final MIMETYPE_DRAWITEM_5:Ljava/lang/String; = "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.5"

.field public static final MIMETYPE_PAGE:Ljava/lang/String; = "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.page"

.field public static final MIMETYPE_URI_LIST:Ljava/lang/String; = "text/uri-list"

.field public static final N_DRAWITEM:I = 0x2

.field public static final N_DRAWITEM_5:I = 0x3

.field public static final N_IMAGE:I = -0x2

.field public static final N_INVALID:I = 0x0

.field public static final N_PAGE:I = 0x1

.field public static final N_TEXT:I = -0x1

.field private static final URI_DRAWITEM:Landroid/net/Uri;

.field private static final URI_DRAWITEM_5:Landroid/net/Uri;

.field private static final URI_PAGE:Landroid/net/Uri;

.field private static final URI_TYPE_DRAWITEM:Ljava/lang/String; = "drawitem"

.field private static final URI_TYPE_DRAWITEM_5:Ljava/lang/String; = "drawitem5"

.field private static final URI_TYPE_PAGE:Ljava/lang/String; = "page"

.field static final dupsrcfile:Z = false

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    const-string v0, "content://com.metamoji.share_classroom.provider/page"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_PAGE:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.metamoji.share_classroom.provider/drawitem"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_DRAWITEM:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.metamoji.share_classroom.provider/drawitem5"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_DRAWITEM_5:Landroid/net/Uri;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 57
    const-string v1, "page"

    const/4 v2, 0x1

    const-string v3, "com.metamoji.share_classroom.provider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    const-string v1, "drawitem"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    const-string v1, "drawitem5"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getClipboard(Landroid/content/Context;I)Ljava/io/File;
    .locals 4

    .line 347
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 348
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 352
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 356
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 361
    invoke-static {p0, v0}, Lcom/metamoji/nt/NtNoteDataProvider;->getClipboardType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    if-eq p1, v3, :cond_3

    return-object v1

    .line 365
    :cond_3
    invoke-static {v0}, Lcom/metamoji/nt/NtNoteDataProvider;->isMine(Landroid/net/Uri;)Z

    move-result p1

    const-string v1, "__exchange.state"

    if-eqz p1, :cond_4

    .line 366
    invoke-static {p0, v1}, Lcom/metamoji/nt/NtNoteDataProvider;->getWorkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 368
    :cond_4
    invoke-static {p0, v2, v0, v1}, Lcom/metamoji/nt/NtNoteDataProvider;->getResourceFile(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getClipboardType(Landroid/content/Context;)I
    .locals 3

    .line 277
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 278
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 279
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string/jumbo v1, "text/uri-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 284
    invoke-virtual {p0, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_1
    invoke-static {v0}, Lcom/metamoji/nt/NtNoteDataProvider;->getTypeIndex(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getClipboardType(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 0

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 267
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/nt/NtNoteDataProvider;->getTypeIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getImportSource(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 2

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "__importing.state"

    invoke-static {p0, v0, p1, v1}, Lcom/metamoji/nt/NtNoteDataProvider;->getResourceFile(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getResourceFile(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 313
    :try_start_0
    invoke-static {p0, p3}, Lcom/metamoji/nt/NtNoteDataProvider;->getWorkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 314
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    :try_start_1
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :try_start_2
    invoke-static {p2, p1}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    .line 324
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 326
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 331
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 333
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object p2, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p2, v0

    goto :goto_6

    :catch_4
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    .line 319
    :goto_2
    :try_start_5
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_1

    .line 324
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 326
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    if-eqz p2, :cond_2

    .line 331
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 333
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-object v0

    :catchall_2
    move-exception p0

    :goto_5
    move-object v0, p1

    :goto_6
    if-eqz v0, :cond_3

    .line 324
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    .line 326
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_3
    :goto_7
    if-eqz p2, :cond_4

    .line 331
    :try_start_9
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p1

    .line 333
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 336
    :cond_4
    :goto_8
    throw p0
.end method

.method private static getTypeIndex(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_4

    .line 243
    const-string/jumbo v0, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 245
    :cond_0
    const-string/jumbo v0, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 247
    :cond_1
    const-string/jumbo v0, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.page"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 249
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, -0x2

    return p0

    .line 251
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static getUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_0
    sget-object p0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_DRAWITEM_5:Landroid/net/Uri;

    return-object p0

    .line 185
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_DRAWITEM:Landroid/net/Uri;

    return-object p0

    .line 189
    :cond_2
    sget-object p0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_PAGE:Landroid/net/Uri;

    return-object p0
.end method

.method private static getWorkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getWorkFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtNoteDataProvider;->getWorkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private static isMine(Landroid/net/Uri;)Z
    .locals 1

    .line 297
    sget-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_DRAWITEM:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_DRAWITEM_5:Landroid/net/Uri;

    .line 298
    invoke-virtual {v0, p0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->URI_PAGE:Landroid/net/Uri;

    .line 299
    invoke-virtual {v0, p0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static mimeTypeOfTypeIndex(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    const-string/jumbo p0, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.5"

    return-object p0

    .line 198
    :cond_1
    const-string/jumbo p0, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.3"

    return-object p0

    .line 202
    :cond_2
    const-string/jumbo p0, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.page"

    return-object p0
.end method

.method public static putClipboard(Landroid/content/Context;I)V
    .locals 4

    .line 218
    invoke-static {p1}, Lcom/metamoji/nt/NtNoteDataProvider;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {p1}, Lcom/metamoji/nt/NtNoteDataProvider;->mimeTypeOfTypeIndex(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    .line 234
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 235
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 236
    new-instance p1, Landroid/content/ClipData$Item;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 237
    new-instance v0, Landroid/content/ClipData;

    const-string v2, "URI"

    invoke-direct {v0, v2, v1, p1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "cannot delete data."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Lcom/metamoji/nt/NtNoteDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    const-string/jumbo p1, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.5"

    return-object p1

    .line 89
    :cond_1
    const-string/jumbo p1, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.drawitem.3"

    return-object p1

    .line 87
    :cond_2
    const-string/jumbo p1, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.page"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 104
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "cannot insert data."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 162
    const-string p1, "__exchange.state"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteDataProvider;->getWorkFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const p2, 0x10000001

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "cannot delete data."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
