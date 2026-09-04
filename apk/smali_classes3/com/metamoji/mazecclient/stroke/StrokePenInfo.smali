.class public Lcom/metamoji/mazecclient/stroke/StrokePenInfo;
.super Ljava/lang/Object;
.source "StrokePenInfo.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;


# instance fields
.field private _inkId:Ljava/lang/String;

.field private _penId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;->_penId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;->_inkId:Ljava/lang/String;

    return-void
.end method

.method public static strokePenInfoFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;
    .locals 2

    .line 8
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    iget-object p0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInkID()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;->_inkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPenID()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;->_penId:Ljava/lang/String;

    return-object v0
.end method
