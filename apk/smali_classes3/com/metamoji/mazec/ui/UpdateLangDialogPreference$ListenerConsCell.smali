.class Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;
.super Ljava/lang/Object;
.source "UpdateLangDialogPreference.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerConsCell"
.end annotation


# instance fields
.field mCdr:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

.field mCur:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;

.field final synthetic this$0:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;


# direct methods
.method protected constructor <init>(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->this$0:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->mCur:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;

    .line 18
    iput-object p3, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->mCdr:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    return-void
.end method


# virtual methods
.method public languagesUpdated()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->mCur:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;->languagesUpdated()V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->mCdr:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->languagesUpdated()V

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;)Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->mCur:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;

    .line 37
    iget-object v1, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->mCdr:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->removeListener(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;)Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;->mCdr:Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$ListenerConsCell;

    return-object p0
.end method
