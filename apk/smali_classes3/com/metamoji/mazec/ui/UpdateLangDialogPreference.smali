.class public Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;
.super Landroid/preference/DialogPreference;
.source "UpdateLangDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;,
        Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;
    }
.end annotation


# instance fields
.field private mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;-><init>(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;)V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    return-void
.end method

.method protected fireUpdateEvent()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->languagesUpdated()V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->removeListener(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;)Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->mListeners:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    return-void
.end method
