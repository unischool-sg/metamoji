.class Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$3;
.super Ljava/lang/Object;
.source "NsCollaboSettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
