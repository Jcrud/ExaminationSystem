package com.hxzy.pojo;

import java.util.Date;

public class TbTaoti {
    private Integer id;

    private String name;

    private Integer lessonid;

    private Date jointime;

    private Integer onemark;

    private Integer muiltmark;

    private String duration;
    private TbLesson lesson;
    private int duo;
    @Override
	public String toString() {
		return "TbTaoti [id=" + id + ", name=" + name + ", lessonid=" + lessonid + ", jointime=" + jointime
				+ ", onemark=" + onemark + ", muiltmark=" + muiltmark + ", duration=" + duration + ", lesson=" + lesson
				+ ", duo=" + dan + ", dan=" + dan + "]";
	}

	private int dan;
    

	public int getDuo() {
		return duo;
	}

	public void setDuo(int duo) {
		this.duo = duo;
	}

	public int getDan() {
		return dan;
	}

	public void setDan(int dan) {
		this.dan = dan;
	}

	public TbLesson getLesson() {
		return lesson;
	}

	public void setLesson(TbLesson lesson) {
		this.lesson = lesson;
	}

	

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getLessonid() {
        return lessonid;
    }

    public void setLessonid(Integer lessonid) {
        this.lessonid = lessonid;
    }

    public Date getJointime() {
        return jointime;
    }

    public void setJointime(Date jointime) {
        this.jointime = jointime;
    }

    public Integer getOnemark() {
        return onemark;
    }

    public void setOnemark(Integer onemark) {
        this.onemark = onemark;
    }

    public Integer getMuiltmark() {
        return muiltmark;
    }

    public void setMuiltmark(Integer muiltmark) {
        this.muiltmark = muiltmark;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration == null ? null : duration.trim();
    }
}