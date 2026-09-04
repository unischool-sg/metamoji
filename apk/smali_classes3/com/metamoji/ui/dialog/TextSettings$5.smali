.class Lcom/metamoji/ui/dialog/TextSettings$5;
.super Ljava/lang/Object;
.source "TextSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$5;->this$0:Lcom/metamoji/ui/dialog/TextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$5;->this$0:Lcom/metamoji/ui/dialog/TextSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextSettings;->-$$Nest$fgetmTextLineExtractLevelGroup(Lcom/metamoji/ui/dialog/TextSettings;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/TextSettings;->-$$Nest$fputmTextLineExtractLevelIndex(Lcom/metamoji/ui/dialog/TextSettings;I)V

    return-void
.end method
