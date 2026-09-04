.class public Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoReentrantOnClickListener"
.end annotation


# instance fields
.field mDealt:Z

.field mRealListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1205
    iput-boolean v0, p0, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;->mDealt:Z

    .line 1208
    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;->mRealListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1215
    iget-boolean v0, p0, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;->mDealt:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1218
    iput-boolean v0, p0, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;->mDealt:Z

    .line 1219
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;->mRealListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 1220
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    :goto_0
    return-void
.end method
