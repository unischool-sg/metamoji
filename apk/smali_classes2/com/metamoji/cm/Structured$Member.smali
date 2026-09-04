.class public abstract Lcom/metamoji/cm/Structured$Member;
.super Ljava/lang/Object;
.source "Structured.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/Structured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Member"
.end annotation


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput p1, p0, Lcom/metamoji/cm/Structured$Member;->offset:I

    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/metamoji/cm/Structured$Member;->offset:I

    return v0
.end method
