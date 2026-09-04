.class Lcom/metamoji/ui/dialog/TextSettings$3;
.super Ljava/lang/Object;
.source "TextSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 174
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$3;->this$0:Lcom/metamoji/ui/dialog/TextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$3;->this$0:Lcom/metamoji/ui/dialog/TextSettings;

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/TextSettings;->-$$Nest$fputmDispTextUnitDropShadow(Lcom/metamoji/ui/dialog/TextSettings;Z)V

    return-void
.end method
