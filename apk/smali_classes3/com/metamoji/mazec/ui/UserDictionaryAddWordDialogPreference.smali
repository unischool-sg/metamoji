.class public Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;
.super Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;
.source "UserDictionaryAddWordDialogPreference.java"


# instance fields
.field private mEditTextReading:Landroid/widget/EditText;

.field private mEditTextWord:Landroid/widget/EditText;

.field private mLang:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$maddWord(Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->addWord()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->initDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->initDialog()V

    return-void
.end method

.method private addWord()Z
    .locals 8

    .line 136
    iget-object v0, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->mEditTextWord:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->mEditTextReading:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 141
    const-string/jumbo v2, "string.msg_word_not_input"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 143
    const-string/jumbo v2, "string.msg_reading_not_input"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 145
    const-string/jumbo v6, "string.dialog_button_ok"

    if-eq v2, v3, :cond_2

    .line 146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-static {v6}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v4

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->mLang:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lcom/metamoji/mazec/converter/ConvertEngine;->userWords()[Lcom/metamoji/mazec/converter/MmjiWord;

    move-result-object v3

    array-length v3, v3

    const/16 v7, 0x7d0

    if-lt v3, v7, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    const-string/jumbo v3, "string.msg_too_many_user_words"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    invoke-static {v6}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 166
    invoke-virtual {v2}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    return v4

    .line 170
    :cond_3
    new-instance v3, Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-direct {v3, v0, v1}, Lcom/metamoji/mazec/converter/MmjiWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/converter/ConvertEngine;->addUserWord(Lcom/metamoji/mazec/converter/MmjiWord;)Z

    .line 171
    invoke-virtual {v2}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->fireUpdateEvent()V

    const/4 v0, 0x1

    return v0
.end method

.method private initDialog()V
    .locals 1

    .line 50
    const-string v0, "layout.user_dictionary_add_word_dialog"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->setDialogLayoutResource(I)V

    .line 51
    const-string/jumbo v0, "string.dialog_button_add"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->setPositiveButtonText(I)V

    .line 52
    const-string/jumbo v0, "string.dialog_button_cancel"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->setNegativeButtonText(I)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    .line 60
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    const-string v1, "input_language"

    sget-object v2, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->mLang:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Lcom/metamoji/mazec/MazecConfig;->isUserWordAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->mLang:Ljava/lang/String;

    .line 69
    :cond_0
    const-string v0, "id.im_user_dict_label"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    const-string v0, "id.edit_text_user_word"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->mEditTextWord:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 102
    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 114
    const-string v0, "id.edit_text_user_reading"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->mEditTextReading:Landroid/widget/EditText;

    .line 115
    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 122
    new-instance v0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference$1;-><init>(Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
