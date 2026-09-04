.class public Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;
.super Ljava/lang/Object;
.source "FxManagerDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/flexible/FxManagerDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMJFXIdListStruct"
.end annotation


# instance fields
.field public cmdTextUnit:Lcom/metamoji/un/text/UnTextUnit$CommandId;

.field public command:Lcom/metamoji/nt/NtCommand;

.field public fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field public imageId:I

.field public titlekey:I


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 24
    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->command:Lcom/metamoji/nt/NtCommand;

    .line 25
    iput p3, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->titlekey:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->imageId:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 30
    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->command:Lcom/metamoji/nt/NtCommand;

    .line 31
    iput p3, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->titlekey:I

    .line 32
    iput p4, p0, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->imageId:I

    return-void
.end method
