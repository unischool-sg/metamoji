.class public Lcom/metamoji/mazec/UserDictionaryActivity;
.super Landroid/app/Activity;
.source "UserDictionaryActivity.java"

# interfaces
.implements Lcom/metamoji/mazec/LangResouceManager$Listener;


# instance fields
.field mAdapter:Lcom/metamoji/mazec/ui/UserDictionaryWordListAdapter;

.field mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

.field mEditWordRead:Landroid/widget/EditText;

.field mEditWordText:Landroid/widget/EditText;

.field mLang:Ljava/lang/String;

.field mWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/converter/MmjiWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mcreateEditWordDialog(Lcom/metamoji/mazec/UserDictionaryActivity;Landroid/content/Context;Lcom/metamoji/mazec/converter/MmjiWord;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/UserDictionaryActivity;->createEditWordDialog(Landroid/content/Context;Lcom/metamoji/mazec/converter/MmjiWord;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monDelete(Lcom/metamoji/mazec/UserDictionaryActivity;Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/UserDictionaryActivity;->onDelete(Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdate(Lcom/metamoji/mazec/UserDictionaryActivity;Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/UserDictionaryActivity;->onUpdate(Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWordList(Lcom/metamoji/mazec/UserDictionaryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/UserDictionaryActivity;->updateWordList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mWordList:Ljava/util/ArrayList;

    return-void
.end method

.method private createEditWordDialog(Landroid/content/Context;Lcom/metamoji/mazec/converter/MmjiWord;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    .line 159
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout.user_dictionary_edit_word_dialog"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 160
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo v1, "string.dialog_title_edit_user_dictionary_word"

    .line 162
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo v1, "string.dialog_button_update"

    .line 164
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/metamoji/mazec/UserDictionaryActivity$3;

    invoke-direct {v3, p0, p2}, Lcom/metamoji/mazec/UserDictionaryActivity$3;-><init>(Lcom/metamoji/mazec/UserDictionaryActivity;Lcom/metamoji/mazec/converter/MmjiWord;)V

    .line 163
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo v1, "string.dialog_button_delete"

    .line 172
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/metamoji/mazec/UserDictionaryActivity$2;

    invoke-direct {v3, p0, p2}, Lcom/metamoji/mazec/UserDictionaryActivity$2;-><init>(Lcom/metamoji/mazec/UserDictionaryActivity;Lcom/metamoji/mazec/converter/MmjiWord;)V

    .line 171
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo v1, "string.dialog_button_cancel"

    .line 180
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 179
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 185
    const-string v1, "id.im_user_dict_label"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    const-string v1, "id.edit_text_user_word"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mEditWordText:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 202
    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 203
    iget-object v1, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mEditWordText:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const-string v1, "id.edit_text_user_reading"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mEditWordRead:Landroid/widget/EditText;

    .line 213
    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 214
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mEditWordRead:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/MmjiWord;->getReading()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private onDelete(Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 4

    .line 311
    const-string/jumbo v0, "string.msg_confirm_delete_user_dictionary_word"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/UserDictionaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/MmjiWord;->getReading()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "string.dialog_button_ok"

    .line 314
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/metamoji/mazec/UserDictionaryActivity$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/metamoji/mazec/UserDictionaryActivity$5;-><init>(Lcom/metamoji/mazec/UserDictionaryActivity;Lcom/metamoji/mazec/converter/MmjiWord;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo p2, "string.dialog_button_cancel"

    .line 323
    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    new-instance v0, Lcom/metamoji/mazec/UserDictionaryActivity$4;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/UserDictionaryActivity$4;-><init>(Lcom/metamoji/mazec/UserDictionaryActivity;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private onUpdate(Landroid/content/DialogInterface;Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mEditWordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mEditWordRead:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 282
    const-string/jumbo v2, "string.msg_word_not_input"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 284
    const-string/jumbo v2, "string.msg_reading_not_input"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eq v2, v3, :cond_2

    .line 289
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo p2, "string.dialog_button_ok"

    .line 291
    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 297
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 300
    iget-object p1, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/converter/ConvertEngine;->removeUserWord(Lcom/metamoji/mazec/converter/MmjiWord;)Z

    .line 301
    iget-object p1, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    new-instance p2, Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-direct {p2, v0, v1}, Lcom/metamoji/mazec/converter/MmjiWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/converter/ConvertEngine;->addUserWord(Lcom/metamoji/mazec/converter/MmjiWord;)Z

    .line 302
    invoke-direct {p0}, Lcom/metamoji/mazec/UserDictionaryActivity;->updateWordList()V

    return-void
.end method

.method private updateLanguage()V
    .locals 3

    .line 119
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    const-string v1, "input_language"

    sget-object v2, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mLang:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Lcom/metamoji/mazec/MazecConfig;->isUserWordAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mLang:Ljava/lang/String;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mLang:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    .line 126
    invoke-direct {p0}, Lcom/metamoji/mazec/UserDictionaryActivity;->updateWordList()V

    return-void
.end method

.method private updateWordList()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->userWords()[Lcom/metamoji/mazec/converter/MmjiWord;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mAdapter:Lcom/metamoji/mazec/ui/UserDictionaryWordListAdapter;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/UserDictionaryWordListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public initialLanguagesInstalled()V
    .locals 1

    .line 335
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/LangResouceManager;->removeListener(Lcom/metamoji/mazec/LangResouceManager$Listener;)V

    .line 338
    invoke-direct {p0}, Lcom/metamoji/mazec/UserDictionaryActivity;->updateLanguage()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/metamoji/mazec/UserDictionaryActivity;->updateLanguage()V

    .line 55
    const-string p1, "layout.user_dictionary_word_list"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/UserDictionaryActivity;->setContentView(I)V

    .line 57
    const-string p1, "id.user_dictionary_word_list"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/UserDictionaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 59
    const-string v0, "id.im_user_dict_label"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/UserDictionaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    new-instance v0, Lcom/metamoji/mazec/ui/UserDictionaryWordListAdapter;

    iget-object v1, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mWordList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/mazec/ui/UserDictionaryWordListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mAdapter:Lcom/metamoji/mazec/ui/UserDictionaryWordListAdapter;

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    new-instance v0, Lcom/metamoji/mazec/UserDictionaryActivity$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/UserDictionaryActivity$1;-><init>(Lcom/metamoji/mazec/UserDictionaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    .line 139
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mLang:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/UserDictionaryActivity;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    :cond_0
    return-void
.end method
