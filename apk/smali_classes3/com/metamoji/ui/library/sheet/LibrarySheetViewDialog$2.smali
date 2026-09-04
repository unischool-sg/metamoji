.class Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;
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

    .line 252
    iput-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;->val$partDic:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;->val$stateFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 255
    sget-object p1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AllPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    sget-object p1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPageAndAfter:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    goto :goto_0

    .line 259
    :cond_1
    sget-object p1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 265
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;

    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;->val$partDic:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;->val$stateFile:Ljava/io/File;

    invoke-virtual {p2, v0, v1, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->applySheetTemplate(Ljava/util/Map;Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)V

    :cond_2
    return-void
.end method
