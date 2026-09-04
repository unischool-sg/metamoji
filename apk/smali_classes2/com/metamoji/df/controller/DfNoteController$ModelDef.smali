.class public Lcom/metamoji/df/controller/DfNoteController$ModelDef;
.super Lcom/metamoji/df/controller/DfController$ModelDef;
.source "DfNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/DfNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final CURRENTPAGE:Ljava/lang/String; = "currentPage"

.field public static final OFFSET_X:Ljava/lang/String; = "offsetX"

.field public static final OFFSET_Y:Ljava/lang/String; = "offsetY"

.field public static final ZOOM:Ljava/lang/String; = "zoom"


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/DfNoteController;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/DfNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController$ModelDef;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-direct {p0}, Lcom/metamoji/df/controller/DfController$ModelDef;-><init>()V

    return-void
.end method
