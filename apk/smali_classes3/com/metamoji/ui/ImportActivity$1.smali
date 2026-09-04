.class Lcom/metamoji/ui/ImportActivity$1;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->selectImportMode(Lcom/metamoji/ui/ImportActivity$IImportModeResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;

.field final synthetic val$callback:Lcom/metamoji/ui/ImportActivity$IImportModeResult;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity;Lcom/metamoji/ui/ImportActivity$IImportModeResult;)V
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

    .line 198
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$1;->this$0:Lcom/metamoji/ui/ImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$1;->val$callback:Lcom/metamoji/ui/ImportActivity$IImportModeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity$1;->val$callback:Lcom/metamoji/ui/ImportActivity$IImportModeResult;

    invoke-interface {p1, p2}, Lcom/metamoji/ui/ImportActivity$IImportModeResult;->selected(I)V

    return-void
.end method
