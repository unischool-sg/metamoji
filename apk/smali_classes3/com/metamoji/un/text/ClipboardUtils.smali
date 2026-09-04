.class public Lcom/metamoji/un/text/ClipboardUtils;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/ClipboardUtils$PasteContent;
    }
.end annotation


# static fields
.field private static final MIMETYPE_MMJEdStringWsUTI2:Ljava/lang/String; = "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.stringws.2"

.field private static final MMJEdStringWsUTI2:Ljava/lang/String; = "com.metamoji.mmjeditor.stringws.2"

.field private static final pasteboardAvailableDataVersion2:Ljava/lang/String; = "2.0"

.field private static final pasteboardDataVersion2:Ljava/lang/String; = "2.0 2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPaste()Z
    .locals 7

    .line 37
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteDataProvider;->getClipboardType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 44
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 45
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    .line 49
    invoke-virtual {v0, v4}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 50
    const-string/jumbo v6, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.stringws.2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static copy(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 8

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    if-nez p1, :cond_0

    .line 65
    :try_start_0
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    new-instance v1, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {v1}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 72
    const-string v2, "2.0 2.0"

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    .line 74
    const-class v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    const-string v2, "com.metamoji.mmjeditor.stringws.2"

    invoke-virtual {v1}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/un/text/model/TextModel;->formatSubstring(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object p1, v2

    .line 88
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 89
    new-instance v4, Landroid/content/ClipData;

    const-string v5, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "text/plain"

    aput-object v7, v6, v1

    const-string/jumbo v1, "vnd.metamoji.clipboard/vnd.metamoji.noteanytime.stringws.2"

    const/4 v7, 0x1

    aput-object v1, v6, v7

    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, p1, v0, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v4, v5, v6, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v3, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 96
    throw p1
.end method

.method public static getPasteContent(Lcom/metamoji/un/text/ClipboardUtils$PasteContent;)Z
    .locals 9

    .line 105
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 106
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 109
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 113
    const-string v7, "com.metamoji.mmjeditor.stringws.2"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 116
    new-instance v7, Lcom/metamoji/cm/DataArchiver;

    array-length v8, v5

    invoke-direct {v7, v5, v2, v8}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 118
    invoke-virtual {v7}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v5

    .line 119
    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 121
    array-length v8, v5

    if-lez v8, :cond_0

    .line 122
    aget-object v5, v5, v2

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 123
    const-string v8, "2.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    const-class v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-static {v0, v7, v1}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 127
    iput-object v0, p0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->swsArray:Ljava/util/List;

    return v6

    .line 132
    :cond_1
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 134
    iput-object v4, p0, Lcom/metamoji/un/text/ClipboardUtils$PasteContent;->plainText:Ljava/lang/CharSequence;

    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method
