.class public Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ClearLearnDictionaryDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1, v1}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->clearLearnWords()Z

    .line 27
    invoke-virtual {v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    goto :goto_0

    .line 31
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    return-void
.end method
