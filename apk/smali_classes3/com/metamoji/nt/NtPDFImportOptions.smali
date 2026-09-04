.class public Lcom/metamoji/nt/NtPDFImportOptions;
.super Ljava/lang/Object;
.source "NtPDFImportOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;,
        Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;
    }
.end annotation


# instance fields
.field private location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

.field private rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPDFImportOptions;->setRotation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;)V

    .line 24
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPDFImportOptions;->setLocation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;)V

    return-void
.end method


# virtual methods
.method public getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-object v0
.end method

.method public getLocationIndex()I
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/nt/NtPDFImportOptions;->rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-object v0
.end method

.method public getRotationIndex()I
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/metamoji/nt/NtPDFImportOptions;->rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public setLocation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-void
.end method

.method public setLocationIndex(I)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 116
    :cond_0
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkBottomLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-void

    .line 113
    :cond_1
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkBottomRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-void

    .line 110
    :cond_2
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkTopRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-void

    .line 107
    :cond_3
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkTopLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-void

    .line 104
    :cond_4
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->location:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-void
.end method

.method public setRotation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-void
.end method

.method public setRotationIndex(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 96
    :cond_0
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation270:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-void

    .line 93
    :cond_1
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation180:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-void

    .line 90
    :cond_2
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation90:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-void

    .line 87
    :cond_3
    sget-object p1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    iput-object p1, p0, Lcom/metamoji/nt/NtPDFImportOptions;->rotation:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-void
.end method
