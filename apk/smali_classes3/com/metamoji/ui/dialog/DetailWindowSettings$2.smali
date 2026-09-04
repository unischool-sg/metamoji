.class Lcom/metamoji/ui/dialog/DetailWindowSettings$2;
.super Ljava/lang/Object;
.source "DetailWindowSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 287
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings$2;->this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 290
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings$2;->this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$fputmAutoScroll(Lcom/metamoji/ui/dialog/DetailWindowSettings;Z)V

    .line 291
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DetailWindowSettings$2;->this$0:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->-$$Nest$mupdateAutoScrollOptionsGrayOut(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    return-void
.end method
