.class Lcom/metamoji/ui/dialog/OpenUrlDialog$2;
.super Ljava/lang/Object;
.source "OpenUrlDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/OpenUrlDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/OpenUrlDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$2;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$2;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
