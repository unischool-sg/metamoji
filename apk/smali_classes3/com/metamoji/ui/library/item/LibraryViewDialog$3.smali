.class Lcom/metamoji/ui/library/item/LibraryViewDialog$3;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 432
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$monNoteTemplateGroupCheckedChanged(Lcom/metamoji/ui/library/item/LibraryViewDialog;I)V

    return-void
.end method
