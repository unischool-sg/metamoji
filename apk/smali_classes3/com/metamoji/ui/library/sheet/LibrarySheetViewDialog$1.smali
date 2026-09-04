.class Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;
.super Ljava/lang/Object;
.source "LibrarySheetViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->selectPart(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;

.field final synthetic val$partDic:Ljava/util/Map;

.field final synthetic val$stateFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;Ljava/util/Map;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;->val$partDic:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;->val$stateFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;

    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;->val$partDic:Ljava/util/Map;

    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;->val$stateFile:Ljava/io/File;

    sget-object v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->Sheets:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->applySheetTemplate(Ljava/util/Map;Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)V

    return-void
.end method
