.class Lcom/metamoji/ns/ui/NsCollaboModeDialog$19;
.super Ljava/lang/Object;
.source "NsCollaboModeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSubMemberIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

.field final synthetic val$editor:Lcom/metamoji/nt/INtEditor;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;Lcom/metamoji/nt/INtEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 583
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$19;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$19;->val$editor:Lcom/metamoji/nt/INtEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$19;->val$editor:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v0

    const/4 v1, 0x0

    .line 587
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/CustomHoverSelectorView;->updateSharePallet(Z)V

    return-void
.end method
