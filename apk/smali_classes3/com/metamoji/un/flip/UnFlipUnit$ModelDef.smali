.class public Lcom/metamoji/un/flip/UnFlipUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnFlipUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/flip/UnFlipUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelDef"
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final FLIP_STATE:Ljava/lang/String; = "flipState"

.field public static final VERSION_1:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
