.class public Lcom/metamoji/nt/NtPrintFormatter;
.super Ljava/lang/Object;
.source "NtPrintFormatter.java"


# instance fields
.field private _pageCount:I

.field private _pageNo:I

.field private _title:Ljava/lang/String;

.field private _updated:Ljava/util/Date;

.field private _userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_title:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_updated:Ljava/util/Date;

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageCount:I

    .line 15
    iput v1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageNo:I

    .line 16
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_userName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public formatHeaderFooter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 39
    :cond_0
    iget v1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageNo:I

    if-nez v1, :cond_1

    return-object v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_updated:Ljava/util/Date;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/nt/NtPrintFormatter;->_updated:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/nt/NtPrintFormatter;->_updated:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v0

    .line 55
    :goto_0
    const-string v3, "%D"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 57
    const-string v2, "%T"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageNo:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v2, "%P"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v2, "%C"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_title:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 69
    :goto_1
    const-string v2, "%S"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_userName:Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v1, v0

    .line 74
    :cond_4
    const-string v0, "%U"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageCount:I

    return v0
.end method

.method public getPageNo()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageNo:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintFormatter;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public setPageCount(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageCount:I

    return-void
.end method

.method public setPageNo(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_pageNo:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_title:Ljava/lang/String;

    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_updated:Ljava/util/Date;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/nt/NtPrintFormatter;->_userName:Ljava/lang/String;

    return-void
.end method
