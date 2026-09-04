.class Lcom/metamoji/ui/dialog/SystemOption$20;
.super Ljava/lang/Object;
.source "SystemOption.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SystemOption;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/SystemOption;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SystemOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$20;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 600
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$20;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fgetmSeekBarDrawTime(Lcom/metamoji/ui/dialog/SystemOption;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fputmLongPressTime(Lcom/metamoji/ui/dialog/SystemOption;I)V

    .line 601
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$20;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$msetTextViewDrawTime(Lcom/metamoji/ui/dialog/SystemOption;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
