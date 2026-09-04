.class public Lcom/metamoji/ui/common/UiMailAddressEditText;
.super Landroid/widget/EditText;
.source "UiMailAddressEditText.java"


# instance fields
.field MAILADDRESS_DELIMITER_REGEX:Ljava/lang/String;

.field _pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    const-string p1, "[,\\s\n]"

    iput-object p1, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->MAILADDRESS_DELIMITER_REGEX:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->_pattern:Ljava/util/regex/Pattern;

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string p1, "[,\\s\n]"

    iput-object p1, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->MAILADDRESS_DELIMITER_REGEX:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->_pattern:Ljava/util/regex/Pattern;

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-string p1, "[,\\s\n]"

    iput-object p1, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->MAILADDRESS_DELIMITER_REGEX:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->_pattern:Ljava/util/regex/Pattern;

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->init()V

    return-void
.end method

.method private addEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 238
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 240
    const-string p2, "%s,"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 244
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 246
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string v2, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    const-string v0, "%s %s,"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 263
    :cond_3
    const-string v0, "%s, %s,"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private containsEmailAddress(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p2, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->emailAddressListFromText(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 314
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private currentDelimiterEnd()I
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getSelectionStart()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 136
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-le v3, v0, :cond_2

    return v3

    :cond_3
    return v1
.end method

.method private currentDelimiterStart()I
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getSelectionStart()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 117
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-le v3, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method private currentTextEnd()I
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentDelimiterEnd()I

    move-result v0

    if-gez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private currentTextStart()I
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentDelimiterStart()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private removeEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, p2, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->emailAddressListFromText(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p2

    .line 275
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->removeEmailAddress(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 292
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "%s,"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move v1, v0

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private removeEmailAddress(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 302
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addMailAddr(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->addEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 180
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setSelection(I)V

    return-void
.end method

.method public containsMailAddr(Ljava/lang/String;)Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->containsEmailAddress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public currentText()Ljava/lang/String;
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentTextStart()I

    move-result v0

    .line 78
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentTextEnd()I

    move-result v2

    if-le v0, v2, :cond_1

    return-object v1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public emailAddressListFromText(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/common/UiMailAddressEditText;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 203
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_2

    .line 206
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    .line 209
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 214
    invoke-static {v3}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;->isMailaddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 217
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public emailAddresses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->emailAddressListFromText(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public emailAddressesWithoutInvalid()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->emailAddressListFromText(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 1

    .line 45
    new-instance v0, Lcom/metamoji/ui/common/UiMailAddressEditText$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiMailAddressEditText$1;-><init>(Lcom/metamoji/ui/common/UiMailAddressEditText;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    new-instance v0, Lcom/metamoji/ui/common/UiMailAddressEditText$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiMailAddressEditText$2;-><init>(Lcom/metamoji/ui/common/UiMailAddressEditText;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public removeMailAddr(Ljava/lang/String;)V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getSelectionEnd()I

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->removeEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setSelection(I)V

    return-void
.end method

.method public replaceMailAddr(Ljava/lang/String;)V
    .locals 5

    .line 156
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentDelimiterEnd()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentTextStart()I

    move-result v2

    .line 161
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentTextEnd()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/2addr v3, v1

    invoke-interface {v4, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v3, ","

    invoke-interface {v1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    .line 171
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setSelection(I)V

    return-void
.end method

.method public validateMailAddress()Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->emailAddresses()Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-static {v1}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;->isMailaddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
