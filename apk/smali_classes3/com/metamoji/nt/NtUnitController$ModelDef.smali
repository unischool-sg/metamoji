.class public Lcom/metamoji/nt/NtUnitController$ModelDef;
.super Lcom/metamoji/df/controller/DfController$ModelDef;
.source "NtUnitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelDef"
.end annotation


# static fields
.field public static final SUBIDTYPE_UNIT:Ljava/lang/String; = "unit"

.field public static final UNITID:Ljava/lang/String; = "unitId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfController$ModelDef;-><init>()V

    return-void
.end method
