.class Lcom/metamoji/ui/dialog/ShapeList$1$1;
.super Ljava/lang/Object;
.source "ShapeList.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeList$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/ShapeList$1;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/ShapeSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeList$1;Lcom/metamoji/ui/dialog/ShapeSettings;)V
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

    .line 154
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$1$1;->this$1:Lcom/metamoji/ui/dialog/ShapeList$1;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeList$1$1;->val$dlg:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$1$1;->this$1:Lcom/metamoji/ui/dialog/ShapeList$1;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList$1;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeList$1$1;->val$dlg:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/ShapeSettings;->getPenStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 163
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$1$1;->this$1:Lcom/metamoji/ui/dialog/ShapeList$1;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeList$1;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShapeList;->-$$Nest$minitDlgValues(Lcom/metamoji/ui/dialog/ShapeList;)V

    return-void
.end method
