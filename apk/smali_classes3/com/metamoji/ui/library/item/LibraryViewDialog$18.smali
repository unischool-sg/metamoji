.class Lcom/metamoji/ui/library/item/LibraryViewDialog$18;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->setupFooter(Landroid/content/Context;)V
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

    .line 2506
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$18;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2509
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$18;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showCCLicense()V

    return-void
.end method
