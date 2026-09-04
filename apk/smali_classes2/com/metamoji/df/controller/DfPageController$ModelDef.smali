.class public Lcom/metamoji/df/controller/DfPageController$ModelDef;
.super Ljava/lang/Object;
.source "DfPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/DfPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final AUTO_PAPER:Ljava/lang/String; = "autoPaper"

.field public static final CURRENT_LAYER:Ljava/lang/String; = "currentLayer"

.field public static final PAPER_HEIGHT:Ljava/lang/String; = "paperHeight"

.field public static final PAPER_WIDTH:Ljava/lang/String; = "paperWidth"

.field public static final PRINT_HEIGHT:Ljava/lang/String; = "printHeight"

.field public static final PRINT_WIDTH:Ljava/lang/String; = "printWidth"

.field public static final ZOOM:Ljava/lang/String; = "zoom"


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/DfPageController;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/metamoji/df/controller/DfPageController$ModelDef;->this$0:Lcom/metamoji/df/controller/DfPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
