.class Lcom/metamoji/ui/dialog/ShapeList$1;
.super Ljava/lang/Object;
.source "ShapeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$1;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 144
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$1;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/ShapeList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    const-string v0, "SapeSettings"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 152
    new-instance v2, Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShapeList$1;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v3, v3, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v2, v3}, Lcom/metamoji/ui/dialog/ShapeSettings;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    .line 153
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/dialog/ShapeSettings;->setArguments(Landroid/os/Bundle;)V

    .line 154
    new-instance v1, Lcom/metamoji/ui/dialog/ShapeList$1$1;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/ui/dialog/ShapeList$1$1;-><init>(Lcom/metamoji/ui/dialog/ShapeList$1;Lcom/metamoji/ui/dialog/ShapeSettings;)V

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/dialog/ShapeSettings;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 166
    invoke-virtual {v2, p1, v0}, Lcom/metamoji/ui/dialog/ShapeSettings;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
