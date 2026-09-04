.class public Lcom/metamoji/nt/NtLayerController$ModelDef;
.super Lcom/metamoji/df/controller/DfLayerController$ModelDef;
.source "NtLayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtLayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final LAYER_ID:Ljava/lang/String; = "layerId"

.field public static final LAYER_TYPE:Ljava/lang/String; = "layerType"

.field public static final VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtLayerController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtLayerController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/metamoji/nt/NtLayerController$ModelDef;->this$0:Lcom/metamoji/nt/NtLayerController;

    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/DfLayerController$ModelDef;-><init>(Lcom/metamoji/df/controller/DfLayerController;)V

    return-void
.end method
