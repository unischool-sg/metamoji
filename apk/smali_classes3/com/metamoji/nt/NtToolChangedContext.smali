.class public Lcom/metamoji/nt/NtToolChangedContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "NtToolChangedContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtToolChangedContext$Kind;
    }
.end annotation


# instance fields
.field private _index:I

.field private _kind:Lcom/metamoji/nt/NtToolChangedContext$Kind;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtToolChangedContext$Kind;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/metamoji/nt/NtToolChangedContext;->_kind:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    .line 24
    iput p2, p0, Lcom/metamoji/nt/NtToolChangedContext;->_index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/metamoji/nt/NtToolChangedContext;->_index:I

    return v0
.end method

.method public getKind()Lcom/metamoji/nt/NtToolChangedContext$Kind;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/nt/NtToolChangedContext;->_kind:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    return-object v0
.end method
