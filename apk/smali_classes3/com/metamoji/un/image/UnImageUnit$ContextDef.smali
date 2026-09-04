.class public Lcom/metamoji/un/image/UnImageUnit$ContextDef;
.super Lcom/metamoji/nt/NtUnitController$ContextDef;
.source "UnImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/image/UnImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextDef"
.end annotation


# static fields
.field public static final DELETE_ON_CLOSE:Ljava/lang/String; = "deleteFile"

.field public static final HIGH_RESOLUTION:Ljava/lang/String; = "highResolution"

.field public static final IMAGE_SOURCE:Ljava/lang/String; = "imageSource"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ContextDef;-><init>()V

    return-void
.end method
