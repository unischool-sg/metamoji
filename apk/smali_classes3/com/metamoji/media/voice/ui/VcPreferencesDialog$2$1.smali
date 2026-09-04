.class Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2$1;
.super Ljava/lang/Object;
.source "VcPreferencesDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2$1;->this$1:Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2$1;->this$1:Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;

    iget-object p1, p1, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;->this$0:Lcom/metamoji/media/voice/ui/VcPreferencesDialog;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->updateRemoveAllPlaylistButtonEnable()V

    return-void
.end method
