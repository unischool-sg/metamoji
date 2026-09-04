.class Lcom/metamoji/ui/dialog/DocumentSettings2$8;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$8;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 604
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$8;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fput_useNoteSettingsForText(Lcom/metamoji/ui/dialog/DocumentSettings2;Z)V

    .line 605
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$8;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_btnTextUnit(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 606
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$8;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_btnTextUnit(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$8;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_useNoteSettingsForText(Lcom/metamoji/ui/dialog/DocumentSettings2;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method
