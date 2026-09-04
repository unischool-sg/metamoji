.class Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;
.super Ljava/lang/Object;
.source "ShareObjectInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/ShareObjectInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parts"
.end annotation


# instance fields
.field _dateTime:Ljava/lang/String;

.field _isCollaboKey:Z

.field _key:Ljava/lang/String;

.field _name:Ljava/lang/String;

.field _timeStamp:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    .line 135
    iput-boolean p2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_isCollaboKey:Z

    .line 136
    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_name:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_dateTime:Ljava/lang/String;

    .line 138
    iput-wide p5, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_timeStamp:D

    return-void
.end method
