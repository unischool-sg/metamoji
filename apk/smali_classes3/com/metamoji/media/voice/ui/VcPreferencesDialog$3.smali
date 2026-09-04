.class Lcom/metamoji/media/voice/ui/VcPreferencesDialog$3;
.super Ljava/lang/Object;
.source "VcPreferencesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->handleRemoveAllPlaylistButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPreferencesDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPreferencesDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$3;->this$0:Lcom/metamoji/media/voice/ui/VcPreferencesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 170
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    .line 171
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VC_REMOVE_ALL_RECORDINGS:Lcom/metamoji/nt/NtCommand;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 172
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$3;->this$0:Lcom/metamoji/media/voice/ui/VcPreferencesDialog;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->updateRemoveAllPlaylistButtonEnable()V

    return-void
.end method
