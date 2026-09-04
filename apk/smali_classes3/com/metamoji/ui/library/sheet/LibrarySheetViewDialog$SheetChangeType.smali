.class public final enum Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;
.super Ljava/lang/Enum;
.source "LibrarySheetViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SheetChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum AllPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum ChangeCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum CurrentPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum CurrentPageAndAfter:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum SelectedPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

.field public static final enum Sheets:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;
    .locals 8

    .line 39
    sget-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AllPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    sget-object v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    sget-object v2, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPageAndAfter:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    sget-object v3, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->SelectedPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    sget-object v4, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->Sheets:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    sget-object v5, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    sget-object v6, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    sget-object v7, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ChangeCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    filled-new-array/range {v0 .. v7}, [Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "AllPages"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AllPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 41
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "CurrentPage"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 42
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "CurrentPageAndAfter"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPageAndAfter:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 43
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "SelectedPages"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->SelectedPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 44
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "Sheets"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->Sheets:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 45
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "AddPage"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 46
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "AddCover"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 47
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const-string v1, "ChangeCover"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ChangeCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 39
    invoke-static {}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->$values()[Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->$VALUES:[Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    const-class v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;
    .locals 1

    .line 39
    sget-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->$VALUES:[Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    return-object v0
.end method
