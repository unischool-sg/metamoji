.class Lcom/metamoji/ui/dialog/DetailWindowSettings$5;
.super Ljava/lang/Object;
.source "DetailWindowSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DetailWindowSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings$5;->this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 340
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings$5;->this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-static {p2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$smforceWindowStepFromId(I)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$fputmForceWindowStep(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V

    .line 341
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings$5;->this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$fgetmForceWindowStep(Lcom/metamoji/ui/dialog/DetailWindowSettings;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$mupdateFeedStepWidthOptionsVisible(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V

    .line 342
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings$5;->this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$fgetmForceWindowStep(Lcom/metamoji/ui/dialog/DetailWindowSettings;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$mupdateLineFeedWidthOptionsVisible(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V

    return-void
.end method
