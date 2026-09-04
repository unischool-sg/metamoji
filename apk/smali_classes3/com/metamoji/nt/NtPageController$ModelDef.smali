.class public Lcom/metamoji/nt/NtPageController$ModelDef;
.super Lcom/metamoji/df/controller/DfPageController$ModelDef;
.source "NtPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final APPLYTEMPLATEUNDO:Ljava/lang/String; = "applytemplateundo"

.field public static final CURRENTLAYER:Ljava/lang/String; = "currentLayer"

.field public static final DW_LINES:Ljava/lang/String; = "dw_lines"

.field public static final FORSCHOOL_PAGE_TYPE:Ljava/lang/String; = "forSchoolPageType"

.field public static final PAGEBGIMAGEUNDO:Ljava/lang/String; = "pagebgimageundo"

.field public static final PAGEBGIMAGEUNDO_ADD:Ljava/lang/String; = "a"

.field public static final PAGEBGIMAGEUNDO_REMOVE:Ljava/lang/String; = "r"

.field public static final PAGEBGIMAGEUNDO_VERSION_LATEST:I = 0x1

.field public static final PAGEID:Ljava/lang/String; = "pageId"

.field public static final PAGESTYLEUNDO:Ljava/lang/String; = "pagestyleundo"

.field public static final PAGESTYLEUNDO_BGIMAGEUNDO:Ljava/lang/String; = "bg"

.field public static final PAGESTYLEUNDO_NEW_PAPER_HEIGHT:Ljava/lang/String; = "nh"

.field public static final PAGESTYLEUNDO_NEW_PAPER_WIDTH:Ljava/lang/String; = "nw"

.field public static final PAGESTYLEUNDO_NEW_PRINT_HEIGHT:Ljava/lang/String; = "nph"

.field public static final PAGESTYLEUNDO_NEW_PRINT_WIDTH:Ljava/lang/String; = "npw"

.field public static final PAGESTYLEUNDO_OLD_PAPER_HEIGHT:Ljava/lang/String; = "oh"

.field public static final PAGESTYLEUNDO_OLD_PAPER_WIDTH:Ljava/lang/String; = "ow"

.field public static final PAGESTYLEUNDO_OLD_PRINT_HEIGHT:Ljava/lang/String; = "oph"

.field public static final PAGESTYLEUNDO_OLD_PRINT_WIDTH:Ljava/lang/String; = "opw"

.field public static final PAGESTYLEUNDO_VERSION_LATEST:I = 0x1

.field public static final PAGE_TEXTUNIT_COMBINEUNDO:Ljava/lang/String; = "page.textunit.combine.undo"

.field public static final PAGE_TEXTUNIT_COMBINEUNDO_FROM:Ljava/lang/String; = "f"

.field public static final PAGE_TEXTUNIT_COMBINEUNDO_MODEL:Ljava/lang/String; = "m"

.field public static final PAGE_TEXTUNIT_COMBINEUNDO_TO:Ljava/lang/String; = "t"

.field public static final PAGE_TEXTUNIT_COMBINEUNDO_VERSION_LATEST:I = 0x1

.field public static final PAGE_TEXTUNIT_CONVERTTEXTUNDO:Ljava/lang/String; = "page.textunit.converttext.undo"

.field public static final PAGE_TEXTUNIT_CONVERTTEXTUNDO_MODEL:Ljava/lang/String; = "m"

.field public static final PAGE_TEXTUNIT_CONVERTTEXTUNDO_TO:Ljava/lang/String; = "t"

.field public static final PAGE_TEXTUNIT_CONVERTTEXTUNDO_VERSION_LATEST:I = 0x1

.field public static final PAGE_TEXTUNIT_SEPARATEUNDO:Ljava/lang/String; = "page.textunit.separate.undo"

.field public static final PAGE_TEXTUNIT_SEPARATEUNDO_FROM:Ljava/lang/String; = "f"

.field public static final PAGE_TEXTUNIT_SEPARATEUNDO_INDEX:Ljava/lang/String; = "i"

.field public static final PAGE_TEXTUNIT_SEPARATEUNDO_MODEL:Ljava/lang/String; = "m"

.field public static final PAGE_TEXTUNIT_SEPARATEUNDO_TO:Ljava/lang/String; = "t"

.field public static final PAGE_TEXTUNIT_SEPARATEUNDO_VERSION_LATEST:I = 0x1

.field public static final PAGE_THUMBNAIL:Ljava/lang/String; = "thumbModel"

.field public static final PAGE_THUMBNAIL_VALUE:Ljava/lang/String; = "v"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$ModelDef;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/DfPageController$ModelDef;-><init>(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method
